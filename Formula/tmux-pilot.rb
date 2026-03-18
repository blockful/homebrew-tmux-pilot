class TmuxPilot < Formula
  desc "A minimal TUI for managing tmux sessions"
  homepage "https://github.com/blockful/tmux-pilot"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/blockful/tmux-pilot/releases/download/v1.0.0/tmux-pilot_Darwin_arm64.tar.gz"
      sha256 "2be04206e5715498f48fe5fb39e938e6867bf26ab519586d9b5bd35fd5f9eacb"
    end
    on_intel do
      url "https://github.com/blockful/tmux-pilot/releases/download/v1.0.0/tmux-pilot_Darwin_x86_64.tar.gz"
      sha256 "0216d7098936bfaaf840889ede477b869144e6e9765e94d318be1116efc5b9ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blockful/tmux-pilot/releases/download/v1.0.0/tmux-pilot_Linux_arm64.tar.gz"
      sha256 "4338b10afd7172883e519286a89ba9ceb991c4fab5af8820944bdddec942e6d8"
    end
    on_intel do
      url "https://github.com/blockful/tmux-pilot/releases/download/v1.0.0/tmux-pilot_Linux_x86_64.tar.gz"
      sha256 "d11a3820facee5c893113623a5a684e0f3632effb4e341ec32535ca6f8a2c163"
    end
  end

  def install
    bin.install "tmux-pilot"
    bin.install_symlink "tmux-pilot" => "tp"
  end

  test do
    assert_match "tmux-pilot", shell_output("#{bin}/tmux-pilot --version")
  end
end
