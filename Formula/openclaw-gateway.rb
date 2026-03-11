class OpenclawGateway < Formula
  desc "OpenClaw gateway guardian daemon (installs as `openclaw-gateway`)"
  homepage "https://github.com/Sobranier/openclaw-cli"
  url "https://github.com/Sobranier/openclaw-cli/archive/refs/tags/v0.3.5.tar.gz"
  sha256 "8ce885eb1ca1807192987e4f265579c25339b3db5202c7c4c38843bd47310930"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/openclaw-cli"] => "openclaw-gateway"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/openclaw-gateway --version")
  end
end
