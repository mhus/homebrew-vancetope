# homebrew-vancetope

Homebrew tap for the **Vancetope** CLI client.

```bash
brew install mhus/vancetope/vancetope
vancetope
```

The formula ships the Vancetope Spring-Boot fat-jar and a `vancetope` launcher
that runs it on a bundled **OpenJDK 25** (pulled in as a Homebrew dependency —
no system Java required). One jar covers macOS (Intel + Apple Silicon) and
Homebrew-on-Linux, since the artifact is architecture-neutral.

## How it stays in sync

`Formula/vancetope.rb` is **generated** — `wb release publish` (in the
[`mhus/vance`](https://github.com/mhus/vance) workbench) rewrites the version,
download URL and `sha256` from the freshly built jar and pushes here. Do not
hand-edit those fields.

## Upgrade

```bash
brew update
brew upgrade vancetope
```
