```
 _____     ______     ______   ______   __  __     __         ______    
/\  __-.  /\  __ \   /\__  _\ /\  ___\ /\ \_\ \   /\ \       /\  ___\   
\ \ \/\ \ \ \ \/\ \  \/_/\ \/ \ \  __\ \ \____ \  \ \ \____  \ \  __\   
 \ \____-  \ \_____\    \ \_\  \ \_\    \/\_____\  \ \_____\  \ \_____\ 
  \/____/   \/_____/     \/_/   \/_/     \/_____/   \/_____/   \/_____/                     
```

## Some pics

### Neovim
![Screenshot From 2024-10-04 18-45-23](https://github.com/user-attachments/assets/81d4d9ab-9a04-4089-8392-6b1ed1115900)

![Screenshot From 2024-10-04 18-47-09](https://github.com/user-attachments/assets/8c168a09-abf8-4ae5-a10a-39602eb76a57)

![Screenshot From 2024-10-04 18-51-07](https://github.com/user-attachments/assets/ea2d333d-b0a3-4f70-8dea-37e967aed89d)

### Tmux
![Screenshot From 2024-10-04 21-16-42](https://github.com/user-attachments/assets/788df2b8-d81f-4123-9435-b01bd28627bc)

![Screenshot From 2024-10-04 21-17-06](https://github.com/user-attachments/assets/fdad9e8b-d073-46ce-81cd-c461d22e9b67)

### zsh
![Screenshot From 2024-10-04 21-17-46](https://github.com/user-attachments/assets/73050f37-989f-4640-ac6a-de9b6b54ded0)

![Screenshot From 2024-10-04 21-18-10](https://github.com/user-attachments/assets/8cb3e141-036f-493a-80bb-334b637d5e29)

![Screenshot From 2024-10-04 21-18-47](https://github.com/user-attachments/assets/95811140-76fb-4a75-a5d5-88c0cc9a102b)



### Decrypt and Restore on a New Machine

To use this on a new machine, follow these steps:

1. Clone the Git repository and pull the encrypted backup (ssh_backup.enc).

2. Decrypt the encrypted file back to a .tar.gz archive:

```openssl enc -aes-256-cbc -d -in ssh_backup.enc -out ssh_backup.tar.gz```

3. Extract the decrypted archive back into your .ssh directory:

```tar -xzf ssh_backup.tar.gz -C ~/```

4. Set the correct permissions for the .ssh directory and its contents:

```chmod 700 ~/.ssh```
```chmod 600 ~/.ssh/*```

5. Add any required keys to the SSH agent:

```ssh-add ~/.ssh/<your-key-file>```
