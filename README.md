# 🔐 Kinko
A ~1kb batch file to "password protect" and hide a directory.

### 🆕 Getting Started
1. Before running **kinko.bat**, first follow the steps outlined below to [change the password](https://github.com/Tressley/kinko#changing-the-password).
2. After you've changed the password, run **kinko.bat** for the first time to create a new vault.
3. Place files in the newly created "Unlocked Vault" directory.
4. Run **kinko.bat** again to [lock the vault](https://github.com/Tressley/kinko#locking-the-vault).

### 🔐 Changing the Password
1. Open **kinko.bat** with a code editor and locate [line 31](https://github.com/Tressley/kinko/blob/1847bc788f3b8f30c06a8fdc8d114324ce093cd8/kinko.bat#L31).
2. Replace `YOUR_KEY_HERE` with your password.
3. Save the file.

### 🔓 Unlocking the Vault
1. Run **kinko.bat** to prompt the password screen.
2. Enter the password to unlock the vault.

### 🔒 Locking the Vault
1. Run **kinko.bat** to prompt the lock screen.
2. Press `Y` to lock the vault.
---
*This project is based on [very old code](https://social.microsoft.com/Forums/en-US/9a0f17af-928e-4732-a3ba-90d54ed961ea/lock-folder-without-any-software?forum=softwareresources) and was intended to be an exercise with DOS batch scripts. This method is not secure and I take no responsibility for any loss of data.*
