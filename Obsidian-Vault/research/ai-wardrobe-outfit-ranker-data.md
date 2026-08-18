# AI Wardrobe — Data Strategy for an Indian Ethnic-Fashion Outfit Ranker

> **Compiled 2026-08-15 from primary sources**: dataset repos/project pages, arXiv paper pages/APIs, official terms of service (Pinterest, Meta), Apple Newsroom, Google Play/App Store listings, Google blog, PRS Legislative Research, and Hugging Face metadata. All URLs verified reachable on 2026-08-15 unless flagged. Claims are marked `[verified]` (primary source read today), `[estimate]` (arithmetic/assumption), or `[unknown]/[unverified]` (could not confirm).
> **Scope**: how a startup can obtain *accurate, non-synthetic, outfit-level preference* training/evaluation data for an Indian ethnic-wear outfit ranker meant to beat general assistants (Gemini/ChatGPT) on *narrow outfit selection*. Companion design + market notes: `ai-wardrobe-fashion-intelligence-design.md`, `ai-wardrobe-market-india.md`.

---

## 1. Executive Summary (decision-oriented)

1. **No public dataset solves this problem.** Every relevant public fashion dataset is either (a) Western/East-Asian product-level classification (DeepFashion, Fashionpedia, ModaNet…), (b) implicit-composition preference from non-Indian communities (Polyvore, IQON3000, iFashion/Taobao), or (c) virtual-try-on pairs (VITON-HD, DressCode). **None** contain: Indian ethnic garments × cultural occasions (sangeet/mehendi/haldi/puja), jewelry–neckline compatibility, or *explicit* pairwise outfit-preference labels. This is a genuine data gap — and the durable moat, exactly as the design note hypothesized.
2. **Almost none of the public data is commercially usable.** DeepFashion requires a signed research-only agreement; DressCode explicitly "will not be released to private companies"; VITON-HD/ModaNet are CC BY-NC; FashionGen and IndoFashion state no license at all; iFashion images are Taobao product photos with no license. Only the *code/metadata* of the Polyvore repo is Apache-2.0 — the underlying community images remain unlicensed/copyrighted and their host site is defunct. **Conclusion: use public datasets for pretraining/extraction baselines and method validation, never as the commercial preference ground truth.**
3. **The real preference signals that exist are implicit, not explicit**: user-composed outfits (Polyvore, IQON3000), click behavior (iFashion: 0.28B clicks from 3.57M users), and same-person co-wear in street photos (academic work on "in-the-wild" compatibility). The startup must collect *explicit* pairwise preference judgments itself — small in count, high in quality — and treat implicit signals as weak supervision.
4. **Methods that fit a no-stylist budget are mature**: Bradley-Terry/DPO-style pairwise preference learning (human pairwise judgments), weak supervision (Snorkel-style programmatic labels), active learning to choose the most informative pairs, tournament/Elo-format comparisons for user engagement, counterfactual negatives, actual-wear diaries as implicit positives, and **preserving rater disagreement rather than collapsing it** (recent alignment literature argues disagreement is signal, not noise).
5. **Frontier models are proposal generators and weak labelers — not ground truth.** Evidence: GPT-4V aligns with humans on fashion aesthetics but demonstrably fails at ranking outfits in similar colors (arXiv:2410.23730); model collapse degrades models trained on model-generated data (arXiv:2305.17493). Use Gemini/ChatGPT to *propose* candidate outfits and *pre-annotate*; keep human adjudication as the gold signal.
6. **Baseline evaluation must be fair and workflow-aware.** Consumer Gemini availability varies by device/region/opt-in; Siri is Apple's own on-device + Private Cloud Compute models with *opt-in* ChatGPT access — it is not "backed by OpenAI models only." Compare on identical image+occasion inputs, blinded human pairwise ranking, plus cost/latency and persistence/workflow (the app has memory; stateless chatbots don't).
7. **Run a 4–6-week go/no-go pairwise study before training any ranker.** ~500–1,000 adjudicated pairwise judgments, ₹15K–75K [estimate], gates on inter-rater agreement, Gemini-beatability, label cost, and a blinded win-rate vs the best free assistant. No ranker training until the gates pass.

---

## 2. Open Datasets — Verified, Licensed, and What They Actually Contain

Methodology: for each dataset I checked the primary repo/project page or the introducing paper, recorded (a) content, (b) **does it contain outfit-level preference or only product classification?**, (c) license/terms, (d) commercial usability. Items marked `[unknown]` could not be confirmed from a primary source on 2026-08-15.

### 2.1 Outfit-composition datasets (implicit preference signals — closest to the target task)

| Dataset | Size (verified) | Supervision signal | License / terms | Commercial use? |
|---|---|---|---|---|
| **Polyvore Outfits** (Han et al., ACM MM'17; repo github.com/xthan/polyvore-dataset) | 21,889 outfits (17,316/1,497/3,076 split); items with category, image URL, price, likes | User-composed outfits (positive sets); fill-in-the-blank (FITB) items; compatibility labels (~7,000 outfits: 4,000 incompatible + 3,000 compatible) | Repo **Apache-2.0** (code/metadata); images are community uploads from Polyvore (site defunct) — no image license | Risky: images unlicensed; metadata legally usable but images must be re-obtained |
| **Polyvore-D / disjoint** (Vasileva et al., ECCV'18, arXiv:1803.09196) | 68,306 outfits crawled from Polyvore; disjoint item split | Same implicit composition; compatibility + FITB benchmarks | No license stated in paper/repo `[unknown]` | Same image risk |
| **IQON3000** (Song et al., "GP-BPR", ACM MM'19) | 3,568 users; 217,806–308,747 outfits (counts differ by preprocessing across papers); ~672,335 items; 6 categories (coat/top/bottom/one-piece/shoes/accessories) | User-composed outfits from IQON (Japanese fashion SNS); item color/category/price/description; implicit co-occurrence only — **no explicit ratings** | No public release URL or license stated in the source papers `[unknown]` | Unclear / likely not obtainable |
| **iFashion** (POG, KDD'21, arXiv:1905.01866; data repo github.com/wenyuer/POG) | 1.01M outfits, 583K items; 0.28B clicks from 3.57M users | **Implicit click behavior** on outfits+items (strongest implicit signal found); outfits composed by Taobao fashion experts; item metadata incl. white-bg image, title, category | No license stated; hosted on Google Drive; images are Taobao product photos | Risky/unclear; access is unofficial |
| **FashionVC / ExpFashion** (Lin et al., IEEE TKDE'19, arXiv:1806.08977) | FashionVC: 14,871 tops + 13,663 bottoms + 20,726 outfits; ExpFashion: 200,745 outfits + 1,052,821 comments | Top–bottom co-occurrence pairs (crawled from Polyvore); ExpFashion adds **user comments** (text = weak preference signal) | Released via Bitbucket; **no license stated** | Unclear; images from Polyvore |
| **In-the-wild / street-fashion co-wear** (arXiv:2206.05982) | Method (no released dataset found) | Items worn by the *same person* treated as compatible positives (self-supervised) — exactly the "actual-wear" signal the startup should collect itself | — | — |
| **COutfitGAN** (2025, arXiv:2502.08674) | 200K+ outfits, 800K+ items | Composition data for synthesis | `[unknown]` | `[unknown]` |

### 2.2 Product-level classification/attribute datasets (no outfit/preference labels)

| Dataset | Size (verified) | What it has | License / terms (verified) | Usable for ranker? |
|---|---|---|---|---|
| **DeepFashion** (Liu et al., CVPR'16; mmlab.ie.cuhk.edu.hk) | 800K+ images; 50 categories; 1,000 attributes; landmarks; retrieval pairs; MultiModal subset | Product-level category/attribute/landmark/retrieval — **no outfit/preference** | **Non-commercial research only**; signed Release Agreement required; no reproduction/sale/exploitation | No (research-only, and no preference labels anyway) |
| **DeepFashion2** (Ge et al., CVPR'19, arXiv:1901.07973) | 491K images; 801K items; 13 categories; masks/landmarks/style/viewpoint; 873K consumer–commercial pairs | Detection/segmentation/pose/retrieval — **no outfit/preference** | License not stated in paper or README; community mirrors label it CC BY-NC 4.0 `[unverified]` | No |
| **iMaterialist Fashion** (FGVC6 2019 / FGVC5 2018; github.com/visipedia/imat_fashion_comp) | 1,012,947 train / 9,897 val / 39,706 test images (2018 ed.); 228 fine-grained attribute classes in 8 high-level groups | Image-level attribute/category labels — **no outfit/preference** | No explicit license stated on repo `[unknown]` | No |
| **ModaNet** (eBay; github.com/eBay/ModaNet) | ~55K street-fashion images (Chictopia-derived), COCO-style polygons, 13 categories | Segmentation/detection — **no outfit/preference** | **CC BY-NC 4.0** | No (NC + no preference) |
| **Fashionpedia** (Jia et al., arXiv:2004.12276) | 48,825 images; 27 categories, 19 parts, 294 attributes; segmentation | Attribute/segmentation — **no outfit/preference** | No license stated on primary pages; some mirrors claim CC BY 4.0 `[unverified]` | No |
| **FashionGen** (arXiv:1806.08317) | 293,008 HD (1360²) images + stylist-written descriptions | Product images + text — **no outfit/preference** | **No license stated** | No |

### 2.3 Indian ethnic-wear datasets (the closest in domain, weakest in supervision)

| Dataset | Size (verified) | What it has | License / terms | Verdict |
|---|---|---|---|---|
| **IndoFashion** (arXiv:2104.02830) | 106,166 images, 15 Indian categories (saree, women/men kurta, lehenga, dupatta, blouse, sherwani, Nehru jacket, palazzo, dhoti pants, mojari…) | Fine-grained *classification* only — **no outfit/preference** | **No license stated**; images scraped from Google Images + Flipkart/Amazon.in/Myntra/Ajio/Craftsvilla/Limeroad/Mirraw/Snapdeal; "will publish with the work" (availability unclear) | Not preference data; derivative-image copyright risk |
| **indian-fashion-apparel-instruct** (Hugging Face, tkdonda) | ~125K rows, 25 categories (Anarkali, saree, lehenga, sherwani…) | **Synthetic, Gemini-generated**, text-only instruction data (descriptions, SEO, attribute extraction, occasion recs) | CC BY 4.0 (the *data file*; content provenance is LLM) | Text/instruction priors only — not preference ground truth |
| **BD-VITON** (arXiv:2603.07291) | 1,013 garment–person pairs (saree 332, panjabi 340, kameez 341) | Virtual try-on pairs for Bangladeshi ethnic wear — **no outfit/preference** | **No license stated**; images scraped from Aarong/Le Reve/Dorjibari listings | VTO research only |
| Myntra-flavoured HF mirrors (soban09, kaushikee01, barryallen16, etc.) | n<1K to 100K rows | Product metadata/instruction sets | Mostly unlicensed `[unknown]` | Treat as unreliable |

### 2.4 Virtual try-on datasets (for completeness — none add preference)

- **VITON-HD** (github.com/shadow2496/VITON-HD): 11,647 train + 2,032 test pairs at 1024×768; **CC BY-NC 4.0, research only**; no preference labels.
- **Dress Code** (CVPR'23, arXiv:2204.08532): 53,792 items / 107,584 images; **explicitly not released to private companies**; requires institutional email + signed release agreement. Not usable commercially.
- **CatVTON** (github.com/Zheng-Chong/CatVTON): uses VITON-HD + DressCode; code/checkpoints **CC BY-NC-SA 4.0**.

### 2.5 Color/style compatibility priors

- **Color compatibility** (O'Donovan, Agarwala, Hertzmann, SIGGRAPH'11): 5-color-palette *user preference ratings* from Kuler/COLOURLovers; dataset released **CC BY-NC-SA**. Not garments, but the only public *explicit pairwise-style color-preference* data; its crowd-rating methodology transfers to the startup's own collection.
- **Theme-aware compatibility** (arXiv:1912.06227): compatibility conditioned on a "theme" — conceptual precedent for *occasion-conditioned* ranking (what the startup needs for sangeet vs puja vs haldi).

**Dataset verdict for the product**: pretrain/benchmark on Polyvore/Polyvore-D + IQON3000 (implicit composition), extract attributes with DeepFashion-family models if kept research-side, but **build the commercial ranker's ground truth from your own collected pairwise preference data**. The Indian-occasion × jewelry × explicit-preference combination exists in no public dataset.

---

## 3. Academic Methods That Fit the Problem (primary sources)

### 3.1 Fashion compatibility & outfit ranking (what to build on)
- **Bi-LSTM compatibility** (Han et al., arXiv:1707.05691): outfits as sequences; visual-semantic embedding + compatibility. Established framing: *compatibility = learnable embedding over outfit item sets*.
- **Type-aware embeddings / Polyvore-D** (Vasileva et al., arXiv:1803.09196): item-type-conditioned embedding space; joint similarity + compatibility. This is the standard backbone for outfit scoring.
- **OutfitTransformer** (arXiv:2204.04812): task tokens + self-attention over outfit items; **set-wise outfit ranking loss** — the closest public method to "rank a set of outfits."
- **POG** (arXiv:1905.01866): user+item+outfit Transformer; click-driven ranking; also the iFashion dataset (§2.1).
- **FashionGCN / metapath heterogeneous graphs** (arXiv:2003.01275): *personalized* compatibility using user–item interactions — precedent for per-user taste modeling.
- **Theme-Matters** (arXiv:1912.06227): occasion/theme-conditioned compatibility — the academic hook for "sangeet vs haldi" ranking.
- **In-the-wild co-wear as positives** (arXiv:2206.05982): same-person items = compatible, self-supervised — the theoretical basis for *actual-wear labels*.
- **Semi-supervised compatibility with pseudo-outfits** (arXiv:2109.08052): matches fully-supervised accuracy with a fraction of labels — weak-supervision precedent.

### 3.2 Pairwise preference learning / ranking (the core training machinery)
- **Bradley–Terry model + RLHF statistics** (survey arXiv:2604.02507): frames preference learning as BTL pairwise comparisons + experimental design.
- **DPO** (Rafailov et al., arXiv:2305.18290): preference learning as a *simple classification loss* on pairwise labels, no RL loop — ideal for a small budget.
- **RLHF from pairwise comparisons** (Christiano et al., arXiv:1706.03741): reward-model training from human pairwise choices; the canonical framing.
- **Active learning for DPO** (arXiv:2503.01076): D-optimal design to choose *which* preference pairs to collect — fewer human labels for the same quality.
- **Bayesian preference learning with annotator disagreement** (arXiv:2310.05782): models the *distribution* of disagreements across raters instead of collapsing them.
- **Dueling-bandit framing of pairwise feedback** (arXiv:2402.09401, arXiv:2507.04340): pairwise preference collection as a contextual dueling bandit — supports tournament-style collection.
- **Learning-to-rank**: RankNet/LambdaRank/LambdaMART (Burges 2005/2010) and the LTR monograph (Liu 2009) are the classical machinery for "rank N candidate outfits"; pairwise losses are the standard.

### 3.3 Weak supervision & noisy labels
- **Data Programming / Snorkel** (Ratner et al., arXiv:1605.07723): combine many noisy *labeling functions* (heuristics, weak signals) via a generative denoising model — the right frame for mixing implicit signals (likes, co-wear, rule-based occasion checks, frontier-model pre-labels) into one training set.
- **LLM-as-labeler evidence**: LEAVS (arXiv:2503.13330) shows an LLM labeler can outperform humans on a narrow structured task; but **Where LLM Annotators Fail** (arXiv:2605.27913) shows LLM label noise is *cluster-dependent* (silent failure modes); **Crowd-LLM hybrid aggregation** (arXiv:2401.09760) shows mixing LLM + crowd labels beats either alone. → Use LLMs as one *labeling function* among several, then verify with human adjudication.

### 3.4 Disagreement-aware labeling (directly relevant to "expert/user disagreement")
- **Diverging Preferences** (arXiv:2410.14632): taxonomy of annotator disagreement sources; standard reward modeling *fails* to account for divergent preferences.
- **Pairwise Maximum Discrepancy Competitions** (arXiv:2601.16987): find pairs where two models/reward functions disagree most; adjudicate with Bradley–Terry — a ready-made *evaluation* tool for a ranker.
- **Uncertainty-aware alignment** (arXiv:2507.15906): independently trained reward models on the same data *strongly disagree* — ensemble disagreement is a signal to measure.
- **Capturing individual human preferences** (arXiv:2503.17338): reward features that specialize per user, with PAC bounds in both example count and number of raters — formal support for per-user taste in a ranker.
- **Expert disagreement is principled, not noise** (arXiv:2601.18061, mental-health domain): preserve disagreement in reward modeling — same conclusion for stylists who disagree on an outfit.
- **Implicit preference from overrides** (arXiv:2604.28010): treating expert/user *overrides* of AI suggestions as implicit preference labels — directly applicable to the wardrobe-concierge pilot (user re-ranks AI's suggestion).

### 3.5 Small specialized models vs large general models (the "beat Gemini on narrow tasks" question)
- **Orca 2** (arXiv:2311.11045): small models trained with *targeted reasoning strategies* reach performance of models **5–10× larger** — mechanism, not just size.
- **SLM relevance labelers** (arXiv:2601.03211): a distilled small LM *matches the teacher LLM* on ranking-label agreement while being ~17× higher throughput and ~19× more cost-effective — direct evidence that a small model can replace a frontier model on a *narrow ranking* job.
- **Decoding Style** (CIKM'24, arXiv:2409.12150): fine-tuning an LLM on Polyvore with direct preference feedback *significantly outperforms the base LLM* on outfit FITB/complementary-item tasks.
- **GPT-4V on fashion aesthetics** (arXiv:2410.23730): zero-shot GPT-4V agrees fairly well with humans on "does this suit the person" but **struggles ranking outfits of similar color** — the narrow-failure zone a specialized ranker can own.
- **TATTOO** (arXiv:2509.23242): training-free MLLM aesthetic profiles (color/style/occasion/season/material/balance) hit SOTA on an aesthetic-100 benchmark — the *baseline to beat*, and a candidate for proposal generation.
- **FashionDPO** (SIGIR'25, arXiv:2504.12900): DPO on a multi-expert AI feedback module (quality/compatibility/personalization) for outfit generation — the state of the art in *AI-generated feedback + preference optimization* (use with the §5 caveats).

---

## 4. Low-Budget Data-Collection Playbook (no stylist team)

All channel sizes below are **estimates** unless marked verified; costs are rough Indian-market figures.

### 4.1 Channels, ranked by cost-per-usable-preference-label
1. **In-app customer preference comparisons (best economics).** Ship the app's "which look is better for X occasion?" micro-survey as an onboarding/engagement mechanic: side-by-side outfit images, one tap. This is DPO/active-learning-native data (`§3.2`). A pilot of 100 active users × 20 judgments/week ≈ **2,000 pairwise judgments/week [estimate]** at ~zero marginal cost. Pick the *most informative* pairs via active learning (`arXiv:2503.01076`).
2. **Tournament pairwise choices (Elo-style).** Users (or paid judges) repeatedly pick winners in small tournaments; Elo/Bradley–Terry ratings convert wins into a global preference ranking (`arXiv:2402.09401`, `arXiv:2507.04340`). Higher engagement and inter-rater stats come free.
3. **Paid micro-panels (micro-task platforms).** Toloka advertises global distributed crowds including "preference labeling" and "model evaluation" services [Toloka platform page]; Appen provides global data annotation; Prolific/Surge AI exist for survey/RLHF-grade work (Prolific claims 300K+ active participants; India coverage not explicitly confirmed on the pages read). **Estimate: ₹10–50 per pairwise judgment** on these platforms → a 1,000-judgment adjudicated pilot ≈ **₹15K–75K [estimate]**. Verify India coverage and platform ToS before committing.
4. **Fashion-school students (NIFT/NID/IIFD-style colleges).** Paid internships/stipends for curated outfit critiques with a rubric; gives *expert* disagreement data (`§3.4`). A 10-student panel × 200 judgments ≈ **2,000 expert judgments [estimate]** in 2–3 weeks; cost is stipend-based, often below platform rates in India [estimate].
5. **Creator partnerships (Indian fashion/occasionwear creators).** Pay (or affiliate-share with) Instagram/YouTube creators to compose and *license* outfit sets for specific occasions — they already produce occasion-grounded outfit content. Get **written image licenses**; never scrape (see §6). A 20-creator cohort × 30 outfits ≈ **600 licensed, occasion-labeled outfit images [estimate]**.
6. **Wardrobe-concierge pilot (highest value per label).** Manually style 20–30 beta users (photos → tags → outfit suggestions); record *user accept/reject/override*. Overrides are implicit preference labels (`arXiv:2604.28010`). 30 users × 10 decisions ≈ **300 high-trust preference events [estimate]**, plus the qualitative "why" via a short free-text.
7. **Actual-wear labels (wear diary).** Log what users actually wore (photo + occasion + date). Same-person co-wear = implicit compatibility positives (`arXiv:2206.05982`). Cheap, longitudinal, and region/occasion-stratified by construction. **Estimate: 5–20 wearable outfit-days per active user/month**.
8. **Counterfactual negatives.** Swap one item of a composed/accepted outfit (replace blouse with a clashing color, swap occasion, etc.) to generate *hard negatives* at zero labeling cost — the standard negative-sampling move in compatibility work (`arXiv:1707.05691`, `arXiv:1803.09196`).

### 4.2 Data-quality controls
- **Consensus + adjudication**: 3-judge majority with a senior adjudicator on ties; report **Krippendorff's alpha / Cohen's kappa** at every collection wave.
- **Preserve disagreement as a probabilistic label** instead of collapsing to a single answer (`arXiv:2410.14632`, `arXiv:2601.18061`); a *variance-aware* ranker can exploit it (`arXiv:2507.15906`).
- **Regional stratification**: quotas per region/language cluster (e.g., North vs South India, wedding-season vs festival-season contexts) because occasion semantics differ regionally [estimate design choice].
- **Dedup and provenance**: store item/outfit image hashes; record the occasion prompt, judge ID, timestamp, and platform for every label.
- **Trap to avoid**: confusing "we have inventory/catalog data" with "we know taste" (design note §2). Catalog data tells you what exists; only preference judgments tell you what's *right* for the person.

---

## 5. Legal / Licensing / Privacy (primary-source verified where possible)

### 5.1 Scraping — verified prohibitions
- **Pinterest ToS** [verified]: "you agree not to scrape, collect, search, copy or otherwise access data or content from Pinterest in unauthorized ways, such as by using automated means" without express prior permission. Users retain rights to their content; Pinterest gets a broad sublicensable license. **Scraping Pinterest for training data is a ToS breach and the images are third-party-copyrighted.**
- **Meta (Facebook/Instagram) Terms of Service** [verified]: automated access/collection of Meta products' data without prior permission is prohibited. **Scraping Instagram outfit images is a ToS breach**; creator partnerships with explicit licenses are the compliant route.
- **Myntra terms of use** [unverified]: the page is JS-rendered and the clause text could not be extracted on 2026-08-15 (both live and Wayback attempts); Flipkart's terms page returned 403. Standard practice for Indian e-commerce ToS is to prohibit automated scraping; **treat retailer product images as copyrighted** regardless of ToS wording.

### 5.2 Copyright & commercial dataset use
- Retailer/creator product images (Flipkart/Amazon/Myntra/Mirraw/etc.) are **copyrighted works**. Datasets that scraped them (e.g., IndoFashion) carry derivative-image risk for any commercial product [legal assessment; not legal advice].
- India has **fair dealing** (Copyright Act 1957, s.52), not US-style fair use; there is **no explicit machine-learning/training carve-out** [verify current case law at use time]. Assume training on scraped images is not protected by fair dealing.
- Research-only datasets are contractually barred from commercial use: DeepFashion (signed agreement, non-commercial), DressCode ("will not be released to private companies"), VITON-HD/ModaNet (CC BY-NC). **Use these only on the research side of the business, never in the shipped model.**
- The Polyvore repo's Apache-2.0 license covers code/metadata only; the images are defunct-community uploads. Treat image use as unlicensed.

### 5.3 Privacy — DPDP (India) and user photos
- **DPDP Act 2023** received assent 11 Aug 2023 [verified, PRS summary + chronology]; processing of digital personal data requires **consent for a lawful purpose** with a pre-consent notice, and consent must be withdrawable; fiduciaries must keep data accurate/secure and **delete it once the purpose is met**; breach notification to the Board and affected persons; children (<18) require verifiable parental consent.
- **Timeline as of 2026-08-15 [verified via updated chronology]**: DPDP Rules, 2025 were **notified in the Gazette on 13 November 2025**, with **phased implementation**: Phase 1 (13 Nov 2025) Data Protection Board establishment; Phase 2 (13 Nov 2026) Consent Manager framework; **Phase 3 (13 May 2027) full substantive compliance obligations for data fiduciaries** (18-month transition). Current date sits between Phases 1 and 2 — build consent architecture *now*, full compliance lands before 13 May 2027.
- **Wardrobe photos are personal data** (images of a user's clothes/body/self) → DPDP consent architecture applies: purpose-limited consent for training vs non-training use, opt-out of training on paid tiers, deletion on request. The market note's design ("photos never used for training on paid tier") is the right default.
- **Data gathered from user micro-surveys** ("which looks better") is also personal data when tied to an account; aggregate/denormalize before any ranker training where possible.

---

## 6. Synthetic Data From Frontier Models: Useful as Proposals/Weak Labels, Not Ground Truth

### 6.1 What frontier models are genuinely good at (use them here)
- **Candidate proposal generation**: generate/rank candidate outfits for an occasion, *then* have humans judge. TATTOO-style aesthetic profiles (arXiv:2509.23242) and FashionDPO-style generation (arXiv:2504.12900) show MLLM quality/compatibility signals are usable *as input to a preference pipeline*.
- **Weak labels / labeling functions in a Snorkel-style ensemble**: LLM pre-annotations (attribute extraction, "does this violate the occasion?", "same-color risk") are good labeling functions — combine with humans via the Crowd-LLM hybrid pattern (arXiv:2401.09760) and verify cluster-wise noise (arXiv:2605.27913).
- **Instruction/description data**: the HF `indian-fashion-apparel-instruct` set (Gemini-generated, CC BY 4.0) shows frontier models can produce credible Indian-ethnic *text* priors for attribute extraction and occasion reasoning — usable as pretraining/instruction data, not as preference truth.
- **RLAIF scaling** (arXiv:2212.08073): AI-judged preference pairs can scale a preference dataset *when anchor-verified by humans* on a sample — the "80% AI + 20% human-audited" pattern.

### 6.2 Why it cannot be the ground truth (verified evidence)
- **GPT-4V fashion-aesthetic study** (arXiv:2410.23730): zero-shot GPT-4V "struggles with ranking outfits in similar colors" — exactly the narrow discrimination the ranker must own. Ground-truthing with the model you're trying to beat bakes in its blind spots.
- **Model collapse** (arXiv:2305.17493): models trained on model-generated data suffer irreversible tail-distribution loss. If the flywheel ever trains on its own proposals without human injection, quality decays over generations.
- **LLM annotator failure is cluster-dependent** (arXiv:2605.27913): LLM labels are not uniformly noisy; they fail silently on specific subpopulations (e.g., specific fabrics, regions) — naive use would systematically bias the ranker against those subpopulations.

### 6.3 How to avoid distilling frontier limitations
1. **Human pairwise judgments remain the gold signal** — every synthetic/weak label is a *candidate* that requires adjudication or statistical de-noising (Snorkel generative model, arXiv:1605.07723).
2. **Measure model/human disagreement explicitly** and put it in the eval: PMDC-style maximum-discrepancy pairs (arXiv:2601.16987), variance-aware training (arXiv:2507.15906).
3. **Inject diversity**: active learning picks the pairs the current ranker is most wrong about (arXiv:2503.01076), so the frontier model's blind spots get covered rather than reinforced.
4. **Log provenance for every label** (synthetic vs human vs implicit) and weight them differently in training; keep a fully-human holdout eval set that synthetic data never contaminates.
5. **Never train a generation loop on its own output** — the wear-diary and adjudication streams (§4.1) must stay human-sourced.

---

## 7. Fair Baseline Evaluation vs Consumer Gemini / ChatGPT

### 7.1 Factual nuances in the baseline (verified, primary sources)
- **Gemini is not one thing.** [verified] Consumer access today includes: the Gemini app on Android (Play listing: 1B+ downloads; **opt-in** — "If you opt in to the Gemini app, it will replace your Google Assistant as the primary assistant") and iOS (App Store: "Google Gemini"); web at gemini.google.com; **AI Mode in Google Search** — a Labs experiment powered by "a custom version of Gemini 2.0," initially invite-only for Google One AI Premium subscribers (Google blog, AI-Mode post); and **on-device Gemini Nano via Android AICore** which is device-dependent (Pixels/Samsung high-end historically — market note §5.3). **Conclusion: which "Gemini" a user has varies by device, region, language, app, and opt-in state; there is no single consumer baseline.**
- **Siri is not "backed by OpenAI models only"** [verified, Apple Newsroom]: Siri's core intelligence runs on Apple's own models — "many of the models that power it run entirely on device," with **Private Cloud Compute** for larger requests; **ChatGPT integration is strictly opt-in** ("Users are asked before any questions are sent to ChatGPT") and "can access it for free without creating an account." Any benchmark claiming "Siri = OpenAI" is wrong.
- **Consumer ChatGPT** is a separate product (web + Android/iOS apps; free tier exists); API models (gpt-5.6 family) are a different pricing/quality surface from the consumer app. Evaluate the *consumer app* as the baseline, or state explicitly which surface is used.

### 7.2 Protocol for a fair comparison (design)
1. **Identical inputs**: the same closet image set + occasion text ("sangeet, Mumbai, outdoor, 28°C") delivered to both systems (upload to each chat app the same way a user would; the startup ranker gets the same structured closet).
2. **Blinded human pairwise ranking**: present N outfit outputs from System A vs System B in randomized, unlabeled order to human judges (3-judge panel + adjudicator); report agreement stats and win-rates per occasion cluster. This is the "blinded human pairwise agreement" eval the design note specified.
3. **Include the GPT-4V failure mode test set**: similar-color outfits and jewelry–neckline cases where the frontier demonstrably degrades (arXiv:2410.23730) — this is the delta zone.
4. **Cost & latency**: consumer apps are free-to-user but rate-limited and slow (image-heavy multi-turn prompting); compute the *per-query API-equivalent cost* for the product from the market note's pricing (§6: styling ≈ $0.0014–0.0025/interaction) and compare to a per-interaction user-value number; measure end-to-end latency on identical device/network.
5. **Persistence/workflow advantage**: the app holds the closet, wear history, and occasion calendar; Gemini/ChatGPT are stateless per session (the user re-uploads/re-types every time). Score this qualitatively and via a "time-to-answer for a repeat user" metric.
6. **Pitfalls to avoid**: comparing your ranker's *images* to a chatbot's *text*; letting the chatbot refuse or hallucinate a garment the user doesn't own; testing on outfits the frontier model has already seen in training (choose user-owned closet items); comparing consumer-app quality to API quality without saying so.

---

## 8. Recommended Staged Data Flywheel + Go/No-Go Experiment

### 8.1 Stage 0 — Go/No-Go (4–6 weeks, before any ranker training)
**Objective**: prove (a) the *task* is judgeable, (b) humans agree enough to learn from, (c) the startup's data can beat a free frontier assistant, (d) label cost is sane.
- **What to build**: 100 occasion-scenarios (curated from the occasion taxonomy: sangeet/mehendi/haldi/puja/reception/office-festive…), each with 5–10 candidate outfits assembled from **licensed images** (creator-partnered or user-pilot wardrobes; never scraped). Total candidate pool ~500–1,000 outfit images.
- **What to collect**: ~500–1,000 pairwise judgments (3 judges each on a subsample; ~150–300 adjudicated pairs) via a micro-panel or concierge users. **Budget: ₹15K–75K [estimate]** at ₹10–50/judgment, or stipend-based student panel.
- **Gates** (all `[estimate]` thresholds — calibrate in the pilot):
  1. **Inter-rater agreement**: Cohen's κ / Krippendorff α ≥ ~0.4 on the adjudicated pairs; below ~0.3 the task framing is broken (too little occasion context, ambiguous images) — fix the prompt/context, don't train.
  2. **Frontier-beatability**: blinded win-rate of the *human-consensus ranking* (or a trivial rule/embedding baseline) vs **consumer Gemini and ChatGPT on the identical pairs** ≥ ~65% in the similar-color/jewelry/occasion-constraint subset. If the free assistants are already near-perfect, there is no delta to sell.
  3. **Label cost**: < ~₹50 per usable adjudicated judgment [estimate]; if platform costs blow past this, switch channels (student panel/creator licensing).
  4. **Retention proxy**: concierge users who re-engage for a second occasion ask within 7 days ≥ ~30% (ties to market note §11 gate).
- **Exit rule**: pass 4/4 → proceed to Stage 1. Fail agreement or beatability → redesign the task/occasion framing or kill the ranker bet and reposition on workflow-only value.

### 8.2 Stage 1+ — The data flywheel (each loop: collect → weak-label → train → eval → ship)
```
1. INGEST      wardrobe photos → structured attributes (extraction VLM; on-device/Flash-Lite per market note §10)
2. PROPOSE     frontier/Gemini-generated candidate outfits per occasion (synthetic as proposals ONLY — §6)
3. RANK/JUDGE  users + micro-panels give pairwise judgments; active learning picks the next most-informative pairs (§3.2, arXiv:2503.01076)
4. TRAIN       small specialized ranker (DPO/BTL pairwise loss) on adjudicated pairs + weak labels (Snorkel-style, §3.3)
5. EVAL        blinded human pairwise ranking vs consumer Gemini/ChatGPT on a frozen human-only holdout (§7.2); PMDC-style disagreement probes (§3.4)
6. SHIP/LEARN  product feedback (accept/reject/override) → overrides are new implicit preference labels (§3.4, arXiv:2604.28010); wear-diary adds actual-wear positives (§4.1)
7. LOOP        re-train weekly; never let synthetic-only generations re-enter without human injection (§6.3)
```
- **Flywheel cadence target [estimate]**: reach **~10K adjudicated pairwise judgments + ~100K weak/implicit signals** within the first 6 months (mix: 40% in-app comparisons, 20% micro-panel, 15% student panel, 15% creator-licensed outfits, 10% concierge overrides). Public composition datasets (Polyvore/Polyvore-D/IQON) can pretrain the embedding backbone research-side (§2).
- **Moats that result**: (a) the occasion-grounded Indian preference dataset no public corpus has; (b) a ranker tuned on it that wins the similar-color/jewelry/occasion subset the frontier models demonstrably lose (§3.5, §6.2); (c) a consent-compliant collection pipeline that platforms can't copy without the same user base (§5.3).

---

## 9. Verified Facts vs Estimates / Unknowns

**Verified today (primary sources read 2026-08-15):**
- Polyvore repo license (Apache-2.0 code/metadata), sizes, FITB + compatibility labels.
- Polyvore-D (68,306 outfits, arXiv:1803.09196); IQON3000 (3,568 users; 217,806–308,747 outfits; 672K items; GP-BPR/ACM MM'19 origin, implicit composition only); iFashion (1.01M outfits/0.28B clicks/3.57M users; POG repo wenyuer/POG).
- DeepFashion research-only agreement + product-level labels; DeepFashion2 sizes (491K images/801K items) and absence of preference labels; ModaNet CC BY-NC 4.0; Fashionpedia sizes; FashionGen size + no license; DressCode "not released to private companies"; VITON-HD CC BY-NC 4.0; CatVTON CC BY-NC-SA 4.0.
- IndoFashion (106,166 images, 15 Indian categories, e-commerce-scraped, no license); BD-VITON (1,013 pairs, no license); HF `indian-fashion-apparel-instruct` (synthetic, Gemini-generated, CC BY 4.0).
- Pinterest ToS anti-scrape clause; Meta/Instagram ToS anti-automated-access clause.
- DPDP Act 2023 (assent 11 Aug 2023; consent/purpose-limitation/rights/penalties); DPDP Rules 2025 notified 13 Nov 2025; phased implementation ending 13 May 2027.
- Apple Newsroom: Siri on-device models + Private Cloud Compute; ChatGPT integration opt-in, free without account.
- Gemini Android app: 1B+ downloads, opt-in replacement of Google Assistant; iOS app exists (App Store "Google Gemini"); AI Mode in Search = Labs experiment, custom Gemini 2.0, initially Google One AI Premium invite.
- Papers: DPO (2305.18290), RLHF-from-preferences (1706.03741), Data Programming (1605.07723), Orca 2 (2311.11045), model collapse (2305.17493), GPT-4V fashion aesthetics (2410.23730), FashionDPO (2504.12900), TATTOO (2509.23242), Decoding Style (2409.12150), Diverging Preferences (2410.14632), PMDC (2601.16987), active learning for DPO (2503.01076), and all others cited with arXiv IDs above.

**Estimates / assumptions (labeled in text):**
- Micro-panel judgment costs (₹10–50), pilot budget (₹15K–75K), flywheel 6-month targets (~10K adjudicated + ~100K weak labels), agreement/win-rate gate thresholds (κ≈0.4, win-rate≈65%), per-judgment adjudication effort.

**Unknown / unverified:**
- Myntra and Flipkart ToS anti-scrape clause text (JS-rendered/403; treat retailer images as copyrighted regardless).
- DeepFashion2 license wording on primary pages (community mirrors say CC BY-NC 4.0).
- Fashionpedia/FashionGen/iMaterialist licenses (none stated on primary pages).
- IQON3000 public download availability; OOTD-from-Instagram dataset (no verifiable primary source found); Surge AI details page contents; Toloka India-specific coverage.
- Indian fair-dealing/ML-training case law — verify before scraping-derived training.

---

## 10. Sources (accessed 2026-08-15 unless noted)

**Datasets & dataset papers**
- github.com/xthan/polyvore-dataset (Polyvore Outfits; Apache-2.0; FITB + compatibility labels; 21,889 outfits)
- arXiv:1803.09196 (Type-Aware Embeddings / Polyvore-D, 68,306 outfits)
- arXiv:1707.05691 (Bi-LSTM fashion compatibility)
- arXiv:1806.08977 (Explainable Fashion Recommendation — FashionVC 14,871/13,663/20,726; ExpFashion 200,745 outfits + 1,052,821 comments)
- arXiv:1905.01866 + github.com/wenyuer/POG (iFashion: 1.01M outfits, 0.28B clicks, 3.57M users; Google Drive hosting, no license stated)
- arXiv:1806.08317 (FashionGen, 293,008 images, no license stated)
- mmlab.ie.cuhk.edu.hk/projects/DeepFashion.html (800K images; non-commercial research only, signed agreement)
- arXiv:1901.07973 + github.com/switchablenorms/DeepFashion2 (491K images / 801K items; no license stated in paper/README)
- github.com/visipedia/imat_fashion_comp (iMaterialist Fashion FGVC5/6; 1M+ images; no explicit license stated)
- github.com/eBay/ModaNet (CC BY-NC 4.0)
- arXiv:2004.12276 + github.com/cvdfoundation/fashionpedia (48,825 images; no license stated on primary pages)
- arXiv:2104.02830 (IndoFashion: 106,166 images, 15 Indian categories; e-commerce-scraped; no license)
- arXiv:2603.07291 (BD-VITON: 1,013 pairs incl. saree/panjabi/kameez; no license)
- github.com/shadow2496/VITON-HD (CC BY-NC 4.0, 11,647/2,032 pairs)
- arXiv:2204.08532 + github.com/aimagelab/dress-code (DressCode: 53,792 items/107,584 images; not released to private companies)
- github.com/Zheng-Chong/CatVTON (CC BY-NC-SA 4.0)
- huggingface.co/datasets/tkdonda/indian-fashion-apparel-instruct (synthetic Gemini-generated, CC BY 4.0)
- arXiv:2502.08674 (COutfitGAN, 200K+ outfits)
- O'Donovan, Agarwala, Hertzmann, "Color Compatibility from Large Datasets," SIGGRAPH 2011 (dgp.toronto.edu/~donovan/color/; CC BY-NC-SA data)

**Methods papers (arXiv IDs in text):** 2204.04812 (OutfitTransformer), 2003.01275 (FashionGCN), 1912.06227 (Theme-Matters), 2206.05982 (in-the-wild compatibility), 2109.08052 (semi-supervised pseudo-outfits), 2305.18290 (DPO), 1706.03741 (RLHF-from-preferences), 1605.07723 (Data Programming), 2311.11045 (Orca 2), 2305.17493 (model collapse), 2212.08073 (Constitutional AI/RLAIF), 2504.12900 (FashionDPO), 2509.23242 (TATTOO), 2409.12150 (Decoding Style), 2410.23730 (GPT-4V fashion aesthetics), 2410.14632 (Diverging Preferences), 2601.16987 (PMDC), 2507.15906 (uncertainty-aware alignment), 2503.17338 (individual preferences w/ reward features), 2601.18061 (expert disagreement), 2604.28010 (overrides as implicit preferences), 2503.01076 (AL for DPO), 2406.10023 (Bayesian AL for preference models), 2310.05782 (Bayesian preference w/ disagreement), 2604.02507 (RLHF statistics survey), 2402.09401 (dueling bandit RLHF), 2507.04340 (groupwise comparison), 2605.27913 (Where LLM Annotators Fail), 2401.09760 (Crowd-LLM aggregation), 2503.13330 (LEAVS), 2601.03211 (SLM relevance labelers), 2003.13988 (Fashion Meets Computer Vision survey), 2306.03395 (Computational Technologies for Fashion Recommendation survey), 2111.00905 (Smart Fashion review, 86 public datasets), 1905.03703, 1812.10021, 2008.00348, 2206.12622 (other compatibility methods listed in §3). Burges, "From RankNet to LambdaRank to LambdaMART" (2005/2010); Liu, "Learning to Rank for Information Retrieval" (2009); Settles, "Active Learning Literature Survey" (2009) — standard references.

**Legal / privacy**
- policy.pinterest.com/en/terms-of-service (anti-scrape clause; user content license)
- facebook.com/terms.php (Meta Terms — automated access prohibited)
- myntra.com/termsofuse [JS-rendered; clause text unextractable]; flipkart.com/pages/terms [403]
- prsindia.org/billtrack/digital-personal-data-protection-bill-2023 (consent, purpose limitation, rights, penalties)
- en.wikipedia.org/wiki/Digital_Personal_Data_Protection_Act,_2023 (Rules notified 13 Nov 2025; phased implementation to 13 May 2027) — supplemented by news RSS (The Print 2026-07-16: "10 months ahead of DPDP Rules deadline")

**Baseline / assistants**
- apple.com/newsroom/2024/06/introducing-apple-intelligence-for-iphone-ipad-and-mac/ (Siri on-device + PCC; ChatGPT opt-in, free without account)
- play.google.com/store/apps/details?id=com.google.android.apps.bard (Gemini Android: 1B+ downloads, opt-in Assistant replacement)
- itunes.apple.com/search?term=gemini+google (iOS "Google Gemini", track 6477489729)
- blog.google/products/search/ai-mode-search/ (AI Mode = Labs experiment, custom Gemini 2.0, Google One AI Premium invites)
- ai.google.dev/gemini-api/docs/on-device (Gemini Nano device-dependent; referenced via market note §5.3)

---

*End of research note. Prepared 2026-08-15. No wiki pages, manifests, indexes, or unrelated files were modified; this is a research-only artifact.*
