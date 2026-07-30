# homebrew-vance

Homebrew tap for the **Vance** CLI client (`vance-foot`).

```bash
brew install mhus/vance/vance
vance chat
```

The formula ships the `vance-foot` Spring-Boot fat-jar and a `vance` launcher
that runs it on a bundled **OpenJDK 25** (pulled in as a Homebrew dependency —
no system Java required). One jar covers macOS (Intel + Apple Silicon) and
Homebrew-on-Linux, since the artifact is architecture-neutral.

## How it stays in sync

`Formula/vance.rb` is **generated** — `wb release publish` (in the
[`mhus/vance`](https://github.com/mhus/vance) workbench) rewrites the version,
download URL and `sha256` from the freshly built jar and pushes here. Do not
hand-edit those fields.

## Upgrade

```bash
brew update
brew upgrade vance
```
