# xchern Homebrew Tap

Personal Homebrew tap hosted at [github.com/xchern/homebrew-tap](https://github.com/xchern/homebrew-tap).

## Install

```sh
brew tap xchern/tap
brew install xchern/tap/kiwix-tools
brew install xchern/tap/symphony
brew install xchern/tap/audio-cpp
```

To use SSH when adding the tap:

```sh
brew tap xchern/tap git@github.com:xchern/homebrew-tap.git
```

The `kiwix-tools` formula currently provides the macOS Apple Silicon binaries.

The `symphony` formula provides Symphony 0.0.3 binaries for macOS and Linux on
Apple Silicon/ARM64 and Intel/x86_64. Install the Codex CLI separately and configure
your tracker credentials, then run `symphony /path/to/WORKFLOW.md`.

The `audio-cpp` formula provides audio.cpp 0.9.0 Metal binaries for macOS Apple
Silicon (macOS 13.3 or later), including `audiocpp_cli`, `audiocpp_server`, and
`audiocpp_gguf`. Download model weights separately. Start the embedded WebUI with
`audiocpp_server --ui --backend metal`, then open `http://127.0.0.1:8080`.

## Documentation

Run `brew help`, `man brew`, or see [Homebrew's documentation](https://docs.brew.sh).
