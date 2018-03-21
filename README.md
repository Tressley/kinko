# Kinko
A basic Windows batch script to password "protect" and hide a directory.

## Using Kinko
### Changing the Password
1. Open kinko.bat with a code editor and locate line 30 `if NOT %kagi%==YOUR_KEY_HERE goto END`
1. Replace `YOUR_KEY_HERE` with your password.
1. Save the file.

### Getting Started
1. Run kinko.bat to create a new vault.
1. Place your files in the new "Unlocked Vault" directory.
1. Run kinko.bat again to lock and hide the vault.
1. To unlock your vault, run kinko.bat again. You will be prompted to enter your password.
