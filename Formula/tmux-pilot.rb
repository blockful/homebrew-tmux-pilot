class TmuxPilot < Formula
  desc "A TUI for managing tmux sessions"
  homepage "https://github.com/blockful/tmux-pilot"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/blockful/tmux-pilot/releases/download/v1.0.0/tmux-pilot_Darwin_arm64.tar.gz"
      sha256 "152e23ede7c3e69cbc75398729cff542fbc915730055a5ea8f849ffaa4b7d171"
    end
    on_intel do
      url "https://github.com/blockful/tmux-pilot/releases/download/v1.0.0/tmux-pilot_Darwin_x86_64.tar.gz"
      sha256 "bf7f83e565550fe3c0542e2dc25d8c576187e0e738f164d95730338a7fa1f6eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blockful/tmux-pilot/releases/download/v1.0.0/tmux-pilot_Linux_arm64.tar.gz"
      sha256 "3dbbd6edc3bf81c5c7a4ae7fefe5f9acec5efce230c6c304818d97442240e946"
    end
    on_intel do
      url "https://github.com/blockful/tmux-pilot/releases/download/v1.0.0/tmux-pilot_Linux_x86_64.tar.gz"
      sha256 "42a92d9b24974e6eae910cbf3736c0301a5c0c55236c8f75b3d5ebb6892d7360"
    end
  end

  def install
    bin.install "tmux-pilot"
  end

  test do
    assert_match "tmux-pilot", shell_output("#{bin}/tmux-pilot --version")
  end
end
