class TmuxPilot < Formula
  desc "A minimal TUI for managing tmux sessions"
  homepage "https://github.com/blockful/tmux-pilot"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/blockful/tmux-pilot/releases/download/v1.0.0/tmux-pilot_Darwin_arm64.tar.gz"
      sha256 "2042eb7ad1fd3730d870d9094df2b73b8827a699fc4b9b14cdc3bfe2836a0feb"
    end
    on_intel do
      url "https://github.com/blockful/tmux-pilot/releases/download/v1.0.0/tmux-pilot_Darwin_x86_64.tar.gz"
      sha256 "47a96c2d41539a078980981568aa10a0d83812430850176c2e18cf197bdb6c5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blockful/tmux-pilot/releases/download/v1.0.0/tmux-pilot_Linux_arm64.tar.gz"
      sha256 "570f9fa58e7e5265dc232f5bb99a6d300ed75b448e93da9a81934167b06a930d"
    end
    on_intel do
      url "https://github.com/blockful/tmux-pilot/releases/download/v1.0.0/tmux-pilot_Linux_x86_64.tar.gz"
      sha256 "a393eb71b8043dc7a8422ae7c9be829dd711a010f3af9202b93f0add102f54b3"
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
