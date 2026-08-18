# AI Wardrobe-Management App — Global & India Market Research, AI Cost Model, Monetization

> Compiled 2026-08-15 from primary sources: App Store / Google Play listings (iTunes Search & Lookup API, Play Store pages), official product sites, official API pricing pages (ai.google.dev, platform.openai.com), company press and news (Bing News RSS, LiveMint, afaqs, etc.), and Hugging Face model metadata.
> All URLs verified reachable on 2026-08-15 unless noted. Company/usage claims are the companies' own unless marked `[verified]` or `[estimate]`.
> Scope: user idea = AI wardrobe app for Indian users with Indian ethnic-wear support (saris, salwar suits, kurtas, lehengas, sherwanis…), occasion/weather/location answers, outfit recommendations, optional "user wearing outfit" image generation.

---

## 1. Executive Summary

- **The category is real and growing globally but is a collection of modest-size apps, not a dominant winner.** Whering (UK, "9–10M users" claimed), Acloset (Korea, ~7M claimed), Alta (US, "TIME Best Invention of 2025" claim), Indyx (US), Cladwell (US), Stylebook (US, one-time $4.99), OpenWardrobe (US), Combyne (Germany). All are Western/Asian general-market apps; **none target Indian ethnic wear** (saree, salwar, kurta, lehenga, sherwani) as first-class citizens.
- **A direct India-focused entrant already exists: "Kya Pehne – AI Wardrobe"** (iOS-only, released 2026-08-06, v1.0, free 50 items / 10 AI stylings; Premium ₹100/mo or ₹1,000/yr at a 50% intro discount). It is brand-new, tiny (1 rating), and Android is "coming soon". This confirms demand-side interest and shows the wedge is **still open but time-sensitive**.
- **Adjacent Indian VTO/shopping players are moving fast but none build a persistent wardrobe memory layer.** Google launched Virtual Apparel Try-On in India (Dec 2025, no ethnic wear); PointAI ("My Wardrobe", Noida, ~$11M funding, physics-based VTO, debuting Aug 2026) powers Amazon/Flipkart/Myntra; Myntra has MyFashionGPT search + a UGC/affiliate creator economy. These are **shop-first, not closet-first** — the wardrobe-catalog + taste-profile + memory moat is unclaimed.
- **AI unit economics are excellent.** Using current Gemini pricing, wardrobe ingestion costs ~₹0.02–0.015 per item (≈ $0.0002–0.001), text styling interactions ~$0.001–0.003 each, and image generation $0.034–0.10 per image. Total AI cost per active user is roughly **$0.03–0.10/mo (light), $0.45–0.75/mo (standard, incl. 5 generated images), $1.60–2.80/mo (heavy, 100 interactions + 20 images)** — far below plausible subscription prices (₹100–1,000/mo).
- **Affiliate monetization is viable but modest in India.** Flipkart Affiliate pays **8%** on Fashion & Lifestyle (incl. Women Ethnic Wear) [official commissions page]; Myntra's new creator affiliate pays **8–12%** by tier (May 2026). Amazon.in commissions are not publicly itemized ("up to 10%" claim). Low AOVs and fashion return rates make affiliate a complement, not the core.
- **Recommendation:** build a **closet-first, Indian-occasion-first MVP** (saree/kurta/lehenga/sherwani taxonomy + sangeet/mehendi/haldi/puja occasions + wear diary), cloud-AI on Gemini Flash-Lite for ingestion + Gemini 3.1 Flash Image (Nano Banana 2) for gated "try-on previews", on-device Gemma/Qwen/SmolVLM as a cost floor, and validate via a curated waitlist + paid pilot before scaling. Full wedge, cost architecture, and validation plan in §9–11.

---

## 2. Global Competitors (verified, accessed 2026-08-15)

| Product | Company / HQ | Pricing model (source) | Free tier | AI styling / recs | Weather / calendar / location | Virtual try-on / image gen | Notes / status |
|---|---|---|---|---|---|---|---|
| **Whering** | Whering Ltd, UK | Freemium + credits + one-time packs (App Store IAP: 10 credits $2.99, 100 credits $12.99; "Supporter" $0.99–$49.99; Outfit Maker $4.99; "30-Day Style Pass") | Free (no published item cap); claims 9–10M users | Daily styling suggestions, outfit maker, shuffle mode; "personal style" based | Outfit planner & packing lists (weather not emphasized) | No | "World's largest free social styling & closet app". ~500K+ Play installs, 4.3★, 26.2K reviews. No Indian/ethnic angle. |
| **Acloset** | Looko Inc. (주식회사 룩코), Korea | Freemium + subscription + AI credit "beans" (App Store: Basic $3.99/mo or $27.99/yr; Premium $9.99/mo or $59.99/yr; Expert $24.99/mo or $147.99/yr; beans $1.99–$9.99) | **Free up to 100 items** | AI stylist chat ("what should I wear today?"), personal-color + fit diagnosis, daily outfits by weather & schedule | Yes (weather + schedule) | Yes (virtual try-on listed on Play) | Claims ~7M users (site) / "roughly 4 million" (Play). 17 languages (no Hindi). 4.4★ iOS, 4.8★ Play (~500K+ installs). |
| **Indyx** | Indyx Inc., US | Freemium + "Insider" $12.99/mo or $74.99/yr + paid styling services (Lookbook = 10 styled outfits, The Feed, The Call) | Free with **unlimited items** | AI auto-tagging/background removal; **explicitly no robot outfits** — human stylists | Calendar, style quiz, 8-week style workshop | No | "Best FREE digital wardrobe app"; 4.7★, ~100K+ Play installs. Positioning: human styling. |
| **Stylebook** | left brain / right brain, LLC, US | **One-time $4.99** (iOS only) | None | Rule-based outfit generator, "AI image generation" for imports | Outfit calendar, packing lists, cost-per-wear | No | 15+ years old, 90+ features, 4.7★. No subscription — signals buyers dislike subscriptions in this category. |
| **Cladwell** | Cladwell Inc., US | Freemium; paid "<$5/month" (monthly/annual) | Manage closet free | AI stylist + ChatGPT "Ask Cladwell" chat; daily weather-personalized outfits | Yes (location + weather forecast) | No | 1M+ downloads claimed. Capsule-wardrobe/konmari positioning. |
| **Combyne** | combyne GmbH, Germany | Freemium (subscription link on site) | Free | No AI — outfit building from 800+ brands, social feed | No | "Virtual dressing room" = brand-item combinator, not photo try-on | 87K App Store ratings. Social/creator fashion platform. |
| **OpenWardrobe** | OpenWardrobe, Inc., US | Freemium; "Circle" $12.99/mo, $79/yr, $199 lifetime | Free trial | **LolaAI** AI stylist trained on your wardrobe; Style Blueprint (colors, body shape, style personality) | Wear calendar/tracking | Style Lab (premium update) | Poshmark resale integration; alterations/repairs booking (US). 4.0★, ~170 ratings iOS. |
| **Alta ("Alta Daily")** | Flagship AI, Inc, US (NYC) | Currently **free** (no IAP listed) | All features claimed free right now | AI stylist, daily outfits from closet + weather + budget, event prompts ("date night in Paris") | Weather + schedule + events | **Yes — try on any outfit on a virtual avatar of you** | "TIME Best Invention of 2025" (claim on listing). 4.9★, 12.2K ratings. Fast mover; monetization unclear (likely to add IAP). |
| **Smart Closet** | Rabbit Tech Inc, US | $2.99 one-time + Pro $0.99/mo or $9.99/yr | Basic free | Rule-based look generator + calendar | Calendar, notifications, packing | No | 4.4★, 4.3K ratings. Simple, dated. |
| **Save Your Wardrobe** | Save Your Wardrobe, UK | Consumer app free; **pivoted to B2B aftersales** (repairs/alterations/warranty for brands, demo-led) | Free app (3.9★ Play) | AI garment scan/identification in app | No | No | Business today is B2B brand aftersales (LVMH cited), not consumer styling. |
| **Style DNA** | AI Style by DNA S.L., Spain | Freemium; subs $7.99–$19.99/mo, $19.99–$39.99/yr | Free | Selfie → color analysis (12 seasons), body type, Kibbe-inspired style type, AI stylist chatbot, daily outfits | Daily outfit ideas | No | Claims 3M+ users. Popular globally incl. India; not India-specific. |
| **Fits** | L. & J. Henne UG, Germany | Freemium (IAP) | Free | AI stylist suggestions, AI color/category/brand detection | Outfit calendar | **Yes — virtual try-on** | 4.6★, 5K ratings. Small but feature-complete. |

Notes: ratings/downloads from App Store (iTunes API) and Google Play pages, US/IN storefronts, 2026-08-15. "Claims" = vendor marketing. All of the above are available in India's stores but none market Indian ethnic wear.

### Other apps observed on storefronts (brief)
- **ShopLook** (US) — Polyvore-style creative canvas + shoppable looks, Pro subscription; no closet AI.
- **My Wardrobe** (Appfit Studio) — cheap AI-stylist + calendar utility.
- **GetWardrobe, Wardrobe.AI, Dressly, Outzy, Clozzie, Pureple, SimpleCloset, Kombinlio, Letsy, Dress Me AI, AI Fitting Room** — a long tail of low-trust, low-quality AI closet/try-on utilities (many with 1–5 ratings). Market is crowded with *generic* AI closet apps, which underlines that **Indian-occasion curation is the defensible difference**, not "AI closet" per se.

---

## 3. Indian & India-Focused Players (verified, accessed 2026-08-15)

| Product | What it is | Status / evidence | Direct overlap with idea |
|---|---|---|---|
| **Kya Pehne – AI Wardrobe** (Saransh Mittal) | AI wardrobe + stylist built for Indian wardrobes: sarees, kurtas, lehengas, sherwanis, dupattas as "first-class citizens"; occasions office/sangeet/mehendi/haldi/puja/Diwali; wear diary, care/repair, packing lists, Wardrobe Locator, family profiles. Free: 50 items + 10 AI stylings. Premium ₹100/mo or ₹1,000/yr (50% intro, from ₹200/₹2,000). | iOS App Store, released 2026-08-06, v1.0, 1 rating; site kyapehne.in; "Coming soon on Google Play" | **Highest direct competitor.** Brand-new, solo-dev scale, iOS-only, tiny traction — the wedge is still open. |
| **Vastra** (Abhishek Aditya Kashyap) | Generic AI wardrobe: photo digitization, weather outfits, virtual try-on, packing. | iOS, Jul 2026, 5 ratings | Partial overlap (no ethnic-first positioning) |
| **ReVastra** (Ashima Johar) | Generic AI wardrobe assistant, weather suggestions, cloud storage. | iOS, Oct 2025, 6 ratings | Partial overlap |
| **THINGS** (Human Tales Technology Pvt Ltd, Mumbai) | AI-native shopping companion for Indian women: "Ego" stylist learns taste, "ME" AI virtual try-on, curated Indian D2C brands, no paid placements. | iOS, v1.138 (Aug 2026), 2 ratings | Adjacent — shopping-first, but does store style profile |
| **PointAI "My Wardrobe"** (Noida) | Deep-tech VTO: digital twin from selfie, physics-based "Simulation AI" (claimed ~100x lower op-cost than gen-AI foundation models), <1s try-on; already powers Amazon, Flipkart, Myntra. ~$11M funding, Intel CEO Lip-Bu Tan among backers. Debuts Aug 2026 in India/Japan/Singapore. | LiveMint, 2026-07-21 | **Important VTO infrastructure**, not a wardrobe-memory app |
| **StyleDotMe** | Indian AR virtual try-on startup (ethnic wear retail clients). | Website down (Cloudflare 525 on 2026-08-14/15); no consumer app found on IN App Store | Status unclear — treat as dormant/unverifiable |
| **Vue.ai / Mad Street Den** (Chennai) | Enterprise AI for retail (tagging, personalization, VTO use cases); copyright footer now "© 2026 M2P Fintech® Inc." | vue.ai live | B2B only; ownership/status changed |
| **Aina, Only2U, Figur, fit.** | New Indian/founder-led AI virtual try-on + wishlist/closet apps (South Asian fashion angle in Aina). | iOS, 0–9 ratings each, 2026 | Adjacent VTO utilities, no memory layer |
| **Myntra MyFashionGPT** | ChatGPT (later Azure OpenAI) powered conversational product discovery in the Myntra app. | Launched May 2023; Microsoft collaboration Dec 2023 | Shopping search, not wardrobe management |
| **Myntra UGC / "Affiliate" (Ultimate Glam Clan)** | Creator commerce: affiliates earn 8–12% by tier; 6M+ UGC sign-ups; 10% of Myntra revenue from social commerce. | afaqs, 2026-05-15 | Monetization channel partner / competitor |
| **Google Virtual Apparel Try-On (India)** | "Try it on" icon on supported listings; upload one photo; tops/bottoms/dresses/jackets/shoes; **ethnic wear not mentioned**. | Business Today, 2025-12-03 | Platform-level VTO; no closet/memory |
| **Anokhi Reet** | Peer-to-peer rental marketplace for traditional Indian outfits (lehenga rental). | iOS, 9 ratings | Adjacent — occasion-wear rental, not wardrobe mgmt |
| **Ethnic-wear retailers (Libas, Koskii, Sudathi, Peachmode, Mirraw, Cbazaar, Inddus, Laxmipati…)** | Ethnic-wear e-commerce apps. | IN App Store, active | Channels for affiliate/shopping recs |

**Key market signal:** a *brand-new, solo, iOS-only* ethnic-first AI wardrobe app (Kya Pehne) shipped a polished, well-priced product in Aug 2026 with zero marketing budget — proof of latent demand and **no entrenched incumbent**.

---

## 4. Adjacent global players (for context)

- **Stitch Fix** (US) — human stylists + algorithm subscription boxes; 131K+ App Store ratings. Styling *service*, not self-serve wardrobe app.
- **Taelor** (US) — men's AI-styled rental subscription.
- **Levi's "Ara"** — AI personal stylist chat for product discovery.
- **Amazon Magic Fit / Fit Review**, **Walmart/Zeekit** — retailer-side VTO.
- **Letsy (Reface), Dress-X (virtual fashion)** — consumer AI try-on / avatar fashion.
- Takeaway: VTO and AI-styling are increasingly *platform features* (Google, Amazon, Myntra); the **user-owned wardrobe catalog + taste memory remains an independent-app space** — which is also its fragility (platforms could absorb it).

---

## 5. AI Model Landscape (pricing current as of 2026-08-15; all prices USD)

### 5.1 Google Gemini API (paid tier; India is a supported region [verified], free tier exists for text models)
Source: https://ai.google.dev/gemini-api/docs/pricing (fetched 2026-08-15).

| Model | Input $/1M tok | Output $/1M tok | Notes |
|---|---|---|---|
| Gemini 3.7 Flash (newest Flash) | $0.75 (→$1.50 after 2026-12-31) | $3.75 (→$7.50) | Free tier input/output; multimodal (text+vision) |
| Gemini 3.5 Flash | $0.375 (→$0.75) | $1.875 (→$3.75) | |
| Gemini 3.5 Flash-Lite | $0.30 | $2.50 | Cheap GA text+vision; free tier |
| Gemini 3.1 Flash-Lite | $0.15 | $1.25 | Cheap; free tier |
| Gemini 2.5 Flash-Lite | $0.10 | $0.40 | Cheapest text+vision; free tier |
| Gemini 2.5 Flash | $0.30 | $2.50 | Free tier |
| Gemini 2.5 Pro | $1.25–2.50 | $10–15 | |
| Gemini 3.1 Pro Preview | $1.50 | $9.00 | |
| Gemini Embedding (text) | $0.15 | — | |
| **Imagen 4** | per image | — | $0.02 Fast / $0.04 Standard / $0.06 Ultra |

**Gemini image generation ("Nano Banana" family) — paid tier only:**
| Model | Cost per image | Capability for "user wearing outfit" |
|---|---|---|
| Gemini 2.5 Flash Image (legacy "Nano Banana") | $0.039 (up to 1024px) | Deprecated-ish; recommend migrating |
| **Gemini 3.1 Flash Image ("Nano Banana 2")** | **$0.067 (1K), $0.101 (2K), $0.151 (4K)**; input $0.50/M | **Up to 10 object refs + up to 4 character-consistency refs → user selfie + garment → "wear this" generation** [verified docs] |
| Gemini 3.1 Flash Lite Image ("Nano Banana 2 Lite") | $0.034 (1K); input $0.25/M | Cheapest; "not optimized for multiple reference inputs or multi-turn editing" |
| Gemini 3 Pro Image ("Nano Banana Pro") | $0.134 (1K/2K), $0.24 (4K); input $2.00/M | Highest fidelity, brand consistency, up to 6 object + 5 character refs |

- **Free tier**: text/vision Flash models free; **image generation is not available on the free tier** [verified].
- Free-tier rate limits are dynamic ("view your active rate limits in AI Studio"); the pricing page says "generous limits" — exact RPM/RPD not published in fetched docs [unknown].
- Image + text input token counts for Gemini: ~258 tokens per 1024px image (docs token counting); used in cost model below.

### 5.2 OpenAI (paid tier; API is available in India — OpenAI appointed an India MD in Jun 2026, runs free trials in India [news])
Source: https://platform.openai.com/api/docs/pricing (fetched 2026-08-15).

| Model | Input $/1M | Output $/1M | Notes |
|---|---|---|---|
| gpt-5.6-sol | $5.00 (short ctx), $10.00 (long) | $30.00 / $45.00 | Flagship; Flex/Batch $2.50/$15 |
| gpt-5.6-terra | $2.00 / $4.00 | $12.00 / $18.00 | Mid; Flex $1.00/$6.00 |
| **gpt-5.6-luna** | **$0.20 / $0.40** | **$1.20 / $1.80** | Budget text+vision ("cost-sensitive, high-volume"); Flex $0.10/$0.60; got an 80% price cut Jul 2026 [news] |
| gpt-image-2 | Image input $8/M, text input $5/M | $30/M output tokens | Per-image: **low $0.006, medium $0.053 (1024²), high $0.211** [docs table]; edit w/ ref images bills high-fidelity input tokens |
| gpt-realtime-2.1(-mini) | $32/$10 audio | $64/$20 | Not needed for MVP |

- All gpt-5.6 models support text **and image input** (vision) natively [models doc].
- GPT-4o / 4.1 / o-series are legacy/deprecated per current models page.

### 5.3 Open / Chinese / on-device models (can run on-device; no per-token cost, but device + ops cost)
Source: Hugging Face API metadata (2026-08-15), model cards.

| Model | Size | License | HF downloads | On-device feasibility |
|---|---|---|---|---|
| **Qwen3-VL-2B-Instruct** (Alibaba) | ~2.1 GB | Apache-2.0 | 2.4M | Vision (image-text-to-text) on mid-range phones via ONNX/llama.cpp; good for garment attribute extraction |
| Qwen3-VL-30B-A3B-Instruct | ~31 GB (MoE, ~7.7 GB bf16) | Apache-2.0 | 392K | High-end only |
| **Moondream2** | ~1.9 GB (~1.9B params) | Apache-2.0 | 2.4M | Very small VLM, good enough for tagging |
| **SmolVLM-256M-Instruct** (HF) | ~500 MB | Apache-2.0 | 983K | Extremely small VLM; ONNX export available |
| Phi-4-multimodal-instruct (Microsoft) | ~5.6 GB | MIT | 518K | Flagship devices |
| **Gemini Nano (on Android)** | on-device via AICore | proprietary | — | ML Kit GenAI APIs: text-only or multimodal prompt, image description; **device-dependent** (Pixel/Samsung high-end historically) — zero marginal cost, offline, private [Android docs] |

- **On-device image generation is not realistic** for consumer phones (diffusion/DiT too heavy). Dedicated VTO models (IDM-VTON, OOTDiffusion, CatVTON) are research-grade, GPU-hosted, and not turnkey; treating them as "self-host VTO" is an R&D detour, not an MVP path.
- Practical cost-control architecture: on-device or ultra-cheap cloud VLM for ingestion tagging → cloud Gemini Flash-Lite/OpenAI luna for reasoning/styling → cloud Nano Banana 2 (gated) for try-on images. Details in §10.

---

## 6. AI Cost per Active User per Month (model with assumptions)

**Token assumptions [estimate]:** garment photo ≈ 400 input tokens (image + short prompt); structured tag output ≈ 400 tokens. Styling interaction: ~4,000 input tokens (retrieved item descriptions + profile + occasion + instructions) and ~500 output tokens. Image gen: 1 output image at 1K, with 2 reference images.

**Prices used (paid tier, current):**
- Ingestion: Gemini 3.5 Flash-Lite $0.30/$2.50 per 1M (mid-quality) or 2.5 Flash-Lite $0.10/$0.40 (cheap).
- Styling: Gemini 3.5 Flash-Lite ($0.30/$2.50); with context caching ≈ $0.03/M cached input.
- Image gen: Nano Banana 2 ≈ $0.067/image (1K) or $0.101 (2K); Nano Banana 2 Lite ≈ $0.034.

**Formulas:**
- Ingestion/item = (400 in × InRate + 400 out × OutRate) / 1e6
  - 3.5 Flash-Lite: (400×0.30 + 400×2.50)/1e6 = **$0.00112/item**
  - 2.5 Flash-Lite: (400×0.10 + 400×0.40)/1e6 = **$0.00020/item**
- Styling/interaction (no caching) = (4000×0.30 + 500×2.50)/1e6 = **$0.00245**
  - with cached context ≈ (4000×0.03 + 500×2.50)/1e6 = **$0.00137**

**Per active user per month (import amortized over 12 months):**

| Usage tier | Wardrobe | Text interactions | Images | **AI cost/user/month** |
|---|---|---|---|---|
| Light | 50 items (amortized) | 10 | 0 | **~$0.03–0.08** (≈₹3–7) |
| Standard | 150 items | 30 | 5 (Nano Banana 2) | **~$0.45–0.75** (≈₹38–63) |
| Heavy + image gen | 150 items | 100 | 20 (Nano Banana 2) | **~$1.60–2.80** (≈₹135–235) |

Worked detail:
- **Light:** text 10×$0.00245=$0.025 (or ~$0.014 cached); ingestion 50×$0.00112/12≈$0.005; images $0 → **$0.03–0.08**.
- **Standard:** text 30×$0.00245=$0.074 (cached ~$0.041); ingestion 150×$0.00112/12≈$0.014; images 5×$0.067–0.101=$0.34–0.50 → **$0.43–0.59 (uncached)** or **$0.40–0.56 (cached)** → call **~$0.45–0.75** with margin.
- **Heavy:** text 100×$0.00245=$0.245 (cached ~$0.137); ingestion $0.014; images 20×$0.067–0.101=$1.34–2.02 → **$1.60–2.28 (uncached)**, cached **~$1.49–2.17** → call **~$1.60–2.80** with margin.

**Sensitivity:** replacing Nano Banana 2 with Nano Banana 2 Lite cuts image cost ~50% ($0.034/img). Replacing Gemini with gpt-5.6-luna text+vision ($0.20/$1.20) makes styling ≈ $0.0014/interaction (similar). One-time first-month ingestion for 150 items ≈ **$0.17 (3.5 FL)** or **$0.03 (2.5 FL)** — negligible, so batch ingestion on signup is safe to give away free.

**Secondary costs (storage/embeddings/vector search):**
- Image storage: 150 items × ~300 KB (compressed webp) ≈ 45 MB/user. S3 standard ≈ $0.023/GB/mo → **~$0.001/user/mo**. CDN/thumbnails similar order.
- Embeddings: 150 items × ~150 tokens ≈ 22.5K tokens × $0.15/1M (Gemini Embedding) ≈ **$0.0034 one-time/user**. Image embeddings (Gemini Embedding multimodal $0.45/M image) ≈ 150 × $0.00012 = **$0.018 one-time/user**.
- Vector search: pgvector/Supabase at this scale is free tier or pennies; managed vector DB only matters at 10k+ users [estimate].
- **Conclusion: AI text+vision is ~90%+ of marginal cost; images dominate the paid tiers; storage is noise at seed stage.**

---

## 7. Affiliate Monetization in India (realities, not invented rates)

| Program | Rate (source, date) | Notes |
|---|---|---|
| **Flipkart Affiliate** | **Fashion & Lifestyle = 8%** (incl. Women Ethnic Wear); Books 6–12%; Grocery 3%; Home 3%; Mobiles 0.5–1% [official commissions page, verified 2026-08-15] | Public rate card. Standard 24-hour cookie; fashion AOV ~₹1,200–1,500 [estimate] → ~₹96–120/order. |
| **Myntra creator Affiliate (UGC)** | **8–12% by creator tier** on sales driven via social content [afaqs, 2026-05-15] | Requires creating 3 UGC posts in-app first; aimed at creators; could be a *distribution* channel for a wardrobe app's "shop this look" recs. |
| **Amazon.in Associates** | **Not publicly itemized**; homepage claims "earn up to 10% in affiliate fees" [official site, verified] | India fee schedule is account-gated [unknown]. Third-party reporting for apparel commonly 2–5% [estimate]. Treat as unknown until signup. |
| YouTube Shopping affiliate (Flipkart/Myntra) | n/a | Program for creators; Oct 2024. |
| Meesho / Nykaa / AJIO | No public affiliate rates found | Meesho uses supplier/reseller economics, not classic affiliate [estimate]. |

**Realities to design around:**
- Fashion affiliate conversion is low (browsers, not buyers) and **returns claw back commissions** — ethnic wear returns are notoriously high (fit/size/colour), so effective EPC will be well below headline % [estimate].
- Blended math: even at 8% × AOV ₹1,500 = ₹120/order, if ~1–2% of stylings convert and ~25% return, effective earnings ≈ ₹0.9–1.8 per styling viewed → affiliate is **a complement (LTV top-up), not a revenue model**.
- The durable monetization is **subscription** (₹100–1,000/mo is an established range: Kya Pehne ₹100/mo intro; Acloset US $3.99–24.99/mo; OpenWardrobe $12.99/mo) plus optional **paid "try-on preview" credits** for image generation (aligns with cost driver in §6).

---

## 8. Verified Facts vs Estimates

**Verified today (primary sources):**
- All competitor app listings, prices, IAPs, ratings, downloads (iTunes API, Play Store).
- Kya Pehne exists (iOS 2026-08-06), its free/premium split (₹100/mo, ₹1,000/yr intro) and features.
- PointAI "My Wardrobe" launch, funding, backers (LiveMint 2026-07-21).
- Google Virtual Apparel Try-On in India (2025-12-03); categories exclude ethnic wear.
- Myntra MyFashionGPT (May/Dec 2023); Myntra Affiliate 8–12% (afaqs 2026-05-15).
- Gemini API pricing incl. Nano Banana 2/Pro/Lite per-image costs; free tier excludes image gen.
- OpenAI gpt-5.6-sol/terra/luna and gpt-image-2 pricing; all 5.6 models multimodal.
- Flipkart Affiliate fashion 8% (official).
- Gemini API + Google AI Studio available in India.
- Gemini Nano on-device via Android AICore / ML Kit GenAI (multimodal prompt + image description).
- Qwen3-VL-2B, Moondream2, SmolVLM-256M, Phi-4-multimodal exist, licenses, sizes, downloads.
- Save Your Wardrobe = B2B aftersales now; Vue.ai footer now under M2P Fintech; StyleDotMe site down (525).

**Estimates / assumptions (label used in text):**
- Token counts per garment/interaction; user engagement tiers (10/30/100 interactions).
- Storage bytes per image, AOVs, affiliate conversion/return rates.
- Amazon.in apparel commission range.
- Gemini free-tier RPM/RPD figures (not published in fetched docs).
- Vendor user-count claims (Whering 9–10M, Acloset 7M, Style DNA 3M, etc.) — marketing, unverified.

---

## 9. Is an Indian ethnic-wear AI wardrobe underserved? Assessment

- **Yes — a defensible gap exists, but it is closing and is narrow.**
  1. **No incumbent:** all scale players (Whering, Acloset, Indyx, Alta, Cladwell) are Western/Asian-general; none model saree draping, lehenga blouses, sherwani+dupatta, or sangeet/mehendi/haldi/puja semantics.
  2. **Platforms do VTO, not memory:** Google, Amazon/Flipkart/Myntra, PointAI solve "will it look good on me while I shop" — none keep a persistent catalog + taste + wear-history across occasions. The **closet-first memory layer is unclaimed**.
  3. **Demand signal:** Kya Pehne (solo, iOS-only, launched 2 weeks ago, priced sensibly) exists — someone already built the "obvious" product. Its constraints (iOS-only, single dev, no distribution) are exactly what a faster, Android-first, better-distributed entrant can beat. **Time-sensitivity: ~6–12 months before a funded clone or Kya Pehne's Android launch firms up the space.**
  4. **Risk to weigh:** category gravity is toward platforms (Google/Myntra); independent closet apps (Whering, Stylebook) are real businesses but modest; willingness-to-pay in India for "digital closet" is unproven — Kya Pehne's ₹100/mo is the only local price point. Mitigation = wedge on **occasion-wear decisions (weddings/festivals) where Indians already spend a lot and feel decision anxiety**, plus a free tier with a hard item cap.

---

## 10. Recommended MVP Wedge + Cost-Control Architecture

**MVP wedge ("Kya pehne, kab, kahan?")**
1. **Closet ingestion that respects ethnic garments:** bulk photo import; cloud VLM extracts category (saree/blouse/petticoat/lehenga/choli/kurta/salwar/dupatta/sherwani…), colour, fabric, pattern, occasion-fit, season. Auto-crop background. *Give this free* (cost ≈ $0.03–0.17 per user one-time).
2. **Occasion-first "Ask":** "What should I wear to a sangeet in Mumbai next week (28°C, outdoor)?" → outfit from *your own* closet + reasoning (colour logic, occasion fit, unworn items) → a small number of "wear this" image previews via **Nano Banana 2** (user selfie + garment refs), **metered** (e.g., 5 previews/mo free, then ₹/credit) since image gen is the dominant cost driver.
3. **Wear diary + repeat-proofing:** log what you wore (photo+note), calendar, "don't repeat at the next shaadi" reminders. This is the retention/memory moat no shopping platform builds.
4. **Care & repair + packing** as cheap utility features (match Kya Pehne; low AI cost).
5. **Distribution:** Android-first (India ~95% Android share [estimate]), then iOS; UPI/Paytm IAPs; Hindi + 2–3 vernacular languages; WhatsApp/ShareChat creator loop.

**Cost-control architecture (per §5/§6):**
- **Tier 0 – On-device (zero marginal cost):** Gemma/Qwen3-VL-2B/SmolVLM or Android Gemini Nano (AICore) for coarse garment tagging and image-description; fall back to cloud when offline/unsupported.
- **Tier 1 – Cheap cloud VLM:** Gemini 2.5/3.5 Flash-Lite (or gpt-5.6-luna) for structured attribute extraction and daily styling; use **context caching** (≈$0.03/M cached) for static wardrobe context; batch free-tier usage where allowed during ramp.
- **Tier 2 – Image gen (paid-only, metered):** Nano Banana 2 Lite ($0.034/img) for drafts; Nano Banana 2 ($0.067–0.10) for "user wearing outfit" with selfie+garment references. Gate behind credits/subscription.
- **Data:** store only user-facing images + small structured metadata; embeddings optional at this scale (pgvector); cold-storage old photos.
- **Guardrails:** cap free image gens/serverless quota per user; abuse detection on bulk ingestion; privacy-first copy (photos never used for training on paid tier).

**Pricing hypothesis to test:** Free (50 items, 10 stylings, 5 previews) → Premium ₹149–299/mo or ₹1,199–2,499/yr (compare Kya Pehne ₹100/mo intro; OpenWardrobe $12.99; Indyx $12.99).

---

## 11. Validation Plan (90 days, low burn)

1. **Landing + waitlist** (2 wks): value-prop copy centered on "never repeat an outfit at a wedding again"; measure signup→share; target 500–1,000 waitlist.
2. **Concierge MVP** (4 wks): manually curate 20–30 beta users' wardrobes (photos → tags → occasion outfits) to validate *outfit quality* and *occasion taxonomy* before automating; gather "would you pay ₹X" price laddering (₹99/149/299).
3. **Automated MVP on Gemini Flash-Lite + Nano Banana 2** (6 wks): measure ingestion accuracy on 100 real Indian garments (saree/lehenga/sherwani failure modes), styling acceptance rate, retention (D7/D30 wear-diary logging), and image-preview conversion.
4. **Gate check:** if ≤30% of users create an occasion-based ask in week 1 or D30 retention <20%, pivot messaging away from "digital closet" toward "occasion wear advisor".
5. **Paid pilot** (₹149/mo, 100 users) to prove willingness-to-pay and measure real AI cost/user against the §6 model before fundraising.

---

## 12. Risks / Unknowns

- **Platform absorption:** Google (Search VTO + Gemini) and Myntra/Flipkart could ship closet+memory features; wardrobe apps are historically fragile standalone businesses.
- **Kya Pehne / clones:** the wedge is contested within months; differentiation must be distribution + data quality + vernacular, not features.
- **Image-gen fidelity on Indian ethnic wear:** saree draping, pallu, blouse-fit via Nano Banana may be imperfect; garment-identity fidelity is unproven [unknown] — must test with a curated ethnic-garment set before promising "try-on".
- **Free-tier / rate limits:** Gemini free-tier RPM/RPD not published; image gen requires paid tier from day one.
- **Willingness-to-pay in India for a closet app:** only one local price point exists (Kya Pehne ₹100/mo intro); subscription ceiling unproven.
- **Affiliate economics:** Amazon.in rates opaque; high fashion return rates depress effective commissions.
- **Vendor claims unverified:** user counts (Whering 9–10M, Acloset 7M/4M, Style DNA 3M), Alta "TIME Best Invention 2025".
- **Privacy/DPDP (India Digital Personal Data Protection Act):** storing body/selfie photos and location requires clear consent architecture — design for it from day one.

---

## 13. Sources (accessed 2026-08-15 unless noted)

**App stores (iTunes Search/Lookup API + Play Store pages):**
- Whering: apps.apple.com/us/app/whering-your-digital-closet/id1519461680 · play.google.com/store/apps/details?id=com.whering.app
- Acloset: apps.apple.com/us/app/acloset-ai-fashion-assistant/id1542311809 · play.google.com/store/apps/details?id=com.looko.acloset
- Indyx: apps.apple.com/us/app/indyx-wardrobe-outfit-app/id1599179405 · play.google.com/store/apps/details?id=com.indyx.android
- Stylebook: apps.apple.com/us/app/stylebook/id335709058
- Cladwell: apps.apple.com/us/app/cladwell-outfit-planner/id1140550878 · https://cladwell.com/ · https://cladwell.com/pricing
- Combyne: apps.apple.com/us/app/combyne-your-perfect-outfit/id989727742 · play.google.com/store/apps/details?id=com.combyne.app
- OpenWardrobe: apps.apple.com/us/app/openwardrobe/id1549029468
- Alta Daily: apps.apple.com/us/app/alta-daily-digital-ai-closet/id6481705400 · https://www.altadaily.com/
- Smart Closet (Rabbit Tech): apps.apple.com/us/app/smart-closet-your-stylist/id1198057728
- Save Your Wardrobe: apps.apple.com/us/app/save-your-wardrobe-organiser/id1485757044 · https://saveyourwardrobe.com/
- Style DNA: apps.apple.com/us/app/style-dna-ai-stylist-closet/id1358319821
- Fits: apps.apple.com/us/app/fits-outfit-planner-closet/id6447482321
- Kya Pehne: apps.apple.com/in/app/kya-pehne-ai-wardrobe/id6787163187 · https://kyapehne.in/
- Vastra (id6759311809), ReVastra (id6753274025), THINGS (id6633426971), Aina (id6764044927), fit. (id6785599440), Figur (id6758705154), Only2U (id6753112805), Anokhi Reet (id6762444661) — IN App Store listings.
- Whering site: https://www.whering.co.uk/ ("9–10M Wherers")

**AI pricing / docs:**
- https://ai.google.dev/gemini-api/docs/pricing — Gemini model + image-gen pricing, free/paid tiers
- https://ai.google.dev/gemini-api/docs/rate-limits — rate limits & usage tiers
- https://ai.google.dev/gemini-api/docs/image-generation — Nano Banana models, multi-reference editing (up to 14 refs; 4 character refs on 3.1 Flash Image)
- https://ai.google.dev/gemini-api/docs/available-regions — India supported
- https://developer.android.com/ai/gemini-nano — on-device Gemini Nano (AICore, ML Kit GenAI, image description)
- https://platform.openai.com/api/docs/pricing — gpt-5.6 family, gpt-image-2, realtime
- https://developers.openai.com/api/docs/guides/image-generation — gpt-image-2 per-image cost table (low $0.006 / medium $0.053 / high $0.211 at 1024²)
- https://developers.openai.com/api/docs/models — gpt-5.6 all multimodal; legacy deprecation
- Hugging Face API: Qwen/Qwen3-VL-2B-Instruct, Qwen/Qwen3-VL-30B-A3B-Instruct, vikhyatk/moondream2, HuggingFaceTB/SmolVLM-256M-Instruct, microsoft/Phi-4-multimodal-instruct

**News / press (Bing News RSS, direct):**
- LiveMint 2026-07-21 — PointAI "My Wardrobe" virtual try-on, $11M funding, Lip-Bu Tan, debuts Aug 2026 (India/Japan/Singapore)
- Business Today 2025-12-03 — Google Virtual Apparel Try-On in India (no ethnic wear)
- India TV News 2023-05-24 & Business Today 2023-12-21 — Myntra MyFashionGPT (ChatGPT → Azure OpenAI)
- afaqs 2026-05-15 — Myntra Affiliate 8–12%, UGC programme metrics (6M signups, 10% of revenue)
- The Hindu 2024-10-25 — YouTube Shopping affiliate via Flipkart/Myntra in India

**Affiliate:**
- https://affiliate.flipkart.com/commissions — Flipkart fashion 8% (official)
- https://affiliate-program.amazon.in/ — Amazon.in Associates ("up to 10%")
- (Amazon.in category fee schedule is account-gated — not public)

---

*End of research note. Prepared 2026-08-15. No code or repo changes were made; this is a research-only artifact.*
