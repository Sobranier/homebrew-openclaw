class OpenclawDoctor < Formula
  desc "OpenClaw gateway guardian daemon (installs as `openclaw-doctor`)"
  homepage "https://github.com/Sobranier/openclaw-doctor"
  url "https://github.com/Sobranier/openclaw-doctor/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "25a63396493a18629f96292c36d7e72292eeffa2ecb4affd5cd4dd58038783bd"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/openclaw-cli"] => "openclaw-doctor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/openclaw-doctor --version")
  end
end
