## Kinko
A basic Windows batch file to password "protect" and hide a directory.

### Using Kinko
#### Getting Started
1. First follow the steps outlined in [Changing the Password](https://github.com/Tressley/kinko#changing-the-password).
1. After you've updated the password, run **kinko.bat** for the first time to create a new vault.
1. Place your files in the newly created "Unlocked Vault" directory.
1. [Lock the vault](https://github.com/Tressley/kinko#locking-the-vault).

#### Changing the Password
1. Open **kinko.bat** with a code editor and locate [line 30](https://github.com/Tressley/kinko/blob/3d620c5b97a202e96f6dce9fac7ccf9b660d495d/kinko.bat#L30) `if NOT %kagi%==YOUR_KEY_HERE goto END`
1. Replace `YOUR_KEY_HERE` with your password.
1. Save the file.

#### Locking the Vault
1. Run **kinko.bat** to prompt the lock screen.
1. Press Y to lock your vault.

#### Unlocking the Vault
1. Run **kinko.bat**, you will be prompted to enter your password.
