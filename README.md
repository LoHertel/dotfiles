# dotfiles

My dotfiles, managed with [`chezmoi`](https://github.com/twpayne/chezmoi).

Install them with:
```bash
chezmoi init LoHertel
```

Secrets are injected from [1Password](https://1password.com) vault and needs [1Password CLI](https://developer.1password.com/docs/cli/) installed.
Login to 1Password with:
```bash
eval $(op signin)
```
