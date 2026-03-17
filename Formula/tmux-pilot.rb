class TmuxPilot < Formula
  desc "A TUI for managing tmux sessions"
  homepage "https://github.com/blockful/tmux-pilot"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/blockful/tmux-pilot/releases/download/v0.4.0/tmux-pilot_Darwin_arm64.tar.gz"
      sha256 "0739f43c7cbbe4fe25050d8133c7f469a7493bd78de2d06d1612ab1d587c230a"
    end
    on_intel do
      url "https://github.com/blockful/tmux-pilot/releases/download/v0.4.0/tmux-pilot_Darwin_x86_64.tar.gz"
      sha256 "cc9955330f0ebc9578b0ca7e9423debba9e2f294fb4ff788c7622dd3ce4a08a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blockful/tmux-pilot/releases/download/v0.4.0/tmux-pilot_Linux_arm64.tar.gz"
      sha256 "b0875d0469f3b2c8b6a8b581770000ee393cab0e464df4f0a3f84c0d18b79a13"
    end
    on_intel do
      url "https://github.com/blockful/tmux-pilot/releases/download/v0.4.0/tmux-pilot_Linux_x86_64.tar.gz"
      sha256 "d1c9ad4d9cfb64bf17f73f0e2f2379f124e003496be5424f418bc8c175a39db7"
    end
  end

  def install
    bin.install "tmux-pilot"
  end

  test do
    assert_match "tmux-pilot", shell_output("#{bin}/tmux-pilot --version")
  end
end
