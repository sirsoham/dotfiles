# Dotfiles
Dotfiles for the setup of my machines. Currently for OSX, with Ubuntu setup coming in the future.

# About this repo
Inspiration for maintaining a dotfiles repo came in part from [Mathias Bynens's dotfiles](https://github.com/mathiasbynens/dotfiles) and [Kevin Schaich's dotfiles](https://github.com/kevinschaich/dotfiles), but also out of a need to maintain a standardized setup for my machines that could be automated as much as possible in cases of system upgrades or emergencies.

# Installation
## Backup Your Files
While this process will not remove anything of importance from your computer, it may overwrite several of your configurations and thus may interfere with the performance of your system.

**I recommend doing a full backup of your system before continuing with the process.** However, if you are short on time, you can probably just backup your current dotfiles (especially the ones in this repo which may be overwritten).

*I TAKE NO RESPONSIBILITY FOR ANYTHING THAT HAPPENS TO YOUR MACHINE.* This is a fairly safe procedure if you follow the instructions; continue at your own risk.

## Customize the configure script
First, fork the repo, then edit the `config.sh` script to your liking. It is well commented, but *make sure you understand what each part is doing before tampering with it.*

If this is your first time using Git and/or GitHub, check out [ProGit](https://progit.org), an open-source, easy-to-digest, and excellent resource on all things Git.

## Install from the configure script
Once you have customized `config.sh` to your liking, paste the following into your Terminal application, making sure to edit in <your_github_username> (assuming you forked the repo) and watch the magic happen!

`curl -L https://raw.githubusercontent.com/<your_github_username>/dotfiles/master/config.sh | sh`

If you didn't make any changes to the config script and thus *DID NOT* fork the repo, paste this into your Terminal application instead:

`curl -L https://raw.githubusercontent.com/sr735/dotfiles/master/config.sh | sh`

**Note: You may be asked to enter your system password a few times as the script installs files, so don't go too far from your computer.**
