class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.13.tgz"
  sha256 "ab9142265f9c8cac1fc60a5465da92f57f36070dc9a64ac96f39a487f53286ad"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.13"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
