class OpenclawManage < Formula
  desc "OpenClaw gateway guardian daemon (installs as `openclaw-manage`)"
  homepage "https://github.com/Sobranier/openclaw-doctor"
  url "https://github.com/Sobranier/openclaw-doctor/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "REPLACE_WITH_SHA256_AFTER_RELEASE"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/openclaw-cli"] => "openclaw-manage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/openclaw-manage --version")
  end
end
