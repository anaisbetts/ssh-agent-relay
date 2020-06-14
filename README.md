# ssh-agent-relay - Use your Windows SSH Agent in WSL2

This project sets up a relay for your SSH agent so that your WSL installation will use the SSH agent built into Windows. Did you know there's an SSH Agent built into Windows? What a world!

## To enable the Windows SSH Agent (one-time only)

Via an **Elevated** PowerShell account:

```sh
Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
sc config ssh-agent start=auto
net start ssh-agent
```

Then, add a key, in PowerShell:

```sh
ssh-add     ## Here's where you put in your password, once
```

## To install

First install the dependencies, `daemonize` and `socat`:

```sh
yay -Sy daemonize socat

## or

apt install daemonize socat
```

Then, install it:

```sh
git clone https://github.com/anaisbetts/ssh-agent-relay

cd ssh-agent-relay
sudo make install
```

Now, open up `~/.bashrc` or `~/.zshrc` and add:

```sh
eval $(ssh-agent-relay)
```