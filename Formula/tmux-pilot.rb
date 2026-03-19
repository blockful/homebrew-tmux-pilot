class TmuxPilot < Formula
  desc "A minimal terminal UI for managing tmux sessions"
  homepage "https://github.com/blockful/tmux-pilot"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/blockful/tmux-pilot/releases/download/v1.1.0/tmux-pilot_Darwin_arm64.tar.gz"
      sha256 "432bf3300781e66df795ceb0068089401452a409bf40a780c5f32d84504bf550"
    end
    on_intel do
      url "https://github.com/blockful/tmux-pilot/releases/download/v1.1.0/tmux-pilot_Darwin_x86_64.tar.gz"
      sha256 "b883a29b738fd751d5dbbe786cc4f7ca75797f495a44c26f3d0fc15390eb249e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blockful/tmux-pilot/releases/download/v1.1.0/tmux-pilot_Linux_arm64.tar.gz"
      sha256 "39cda3dab32568e622d3859b2e2a9bd4ba228b35e871a7739ede61db7c4b47d2"
    end
    on_intel do
      url "https://github.com/blockful/tmux-pilot/releases/download/v1.1.0/tmux-pilot_Linux_x86_64.tar.gz"
      sha256 "2c26d1a96ad221e3b2c23aa52be527891eaa783108a258c6983db2c159ac4fb3"
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
