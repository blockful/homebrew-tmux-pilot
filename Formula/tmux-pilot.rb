class TmuxPilot < Formula
  desc "A minimal TUI for managing tmux sessions"
  homepage "https://github.com/blockful/tmux-pilot"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/blockful/tmux-pilot/releases/download/v1.0.0/tmux-pilot_Darwin_arm64.tar.gz"
      sha256 "104a6b62fc03d7cfb9d6cfa8147c7f952cd5032aefadf918c3634799b8bf2bb9"
    end
    on_intel do
      url "https://github.com/blockful/tmux-pilot/releases/download/v1.0.0/tmux-pilot_Darwin_x86_64.tar.gz"
      sha256 "13c0d71b712a2275a2f7c952826b60a885ce08f042f8ea624ce77368c11486bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blockful/tmux-pilot/releases/download/v1.0.0/tmux-pilot_Linux_arm64.tar.gz"
      sha256 "9fe7b99160d2755365f442288995885ee2e882a516352f000e40813284f2370a"
    end
    on_intel do
      url "https://github.com/blockful/tmux-pilot/releases/download/v1.0.0/tmux-pilot_Linux_x86_64.tar.gz"
      sha256 "1d7ac9403b0de1a1a06a1bfc18113e1cc46e079bdd0e46fdadedc32da1d1008b"
    end
  end

  def install
    bin.install "tmux-pilot"
  end

  test do
    assert_match "tmux-pilot", shell_output("#{bin}/tmux-pilot --version")
  end
end
