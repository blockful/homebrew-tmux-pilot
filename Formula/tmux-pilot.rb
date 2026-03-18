class TmuxPilot < Formula
  desc "A minimal TUI for managing tmux sessions"
  homepage "https://github.com/blockful/tmux-pilot"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/blockful/tmux-pilot/releases/download/v0.6.0/tmux-pilot_Darwin_arm64.tar.gz"
      sha256 "9fb951d0e5b64d0f722483b7a0d9ef04f78250ecdeb2e143e9b267026b18c279"
    end
    on_intel do
      url "https://github.com/blockful/tmux-pilot/releases/download/v0.6.0/tmux-pilot_Darwin_x86_64.tar.gz"
      sha256 "d038ea61eb32cb648b0434766ca1417b939b7cb8246f7848614945d2c4276147"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blockful/tmux-pilot/releases/download/v0.6.0/tmux-pilot_Linux_arm64.tar.gz"
      sha256 "e9376c0c8702bdf3ab125bc9691a1af1146ec930b65d89d80ef6c9e3cc639152"
    end
    on_intel do
      url "https://github.com/blockful/tmux-pilot/releases/download/v0.6.0/tmux-pilot_Linux_x86_64.tar.gz"
      sha256 "06ea4cf163c74cd8d9cfb89cb418236ae428ad590b25f5e305a38f8061e8a21a"
    end
  end

  def install
    bin.install "tmux-pilot"
  end

  test do
    assert_match "tmux-pilot", shell_output("#{bin}/tmux-pilot --version")
  end
end
