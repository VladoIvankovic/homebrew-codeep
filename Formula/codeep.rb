class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.110.tgz"
  sha256 "2931a3e62225d2c58e2e0a6e9a0d5c65d22a808aff68475fcda5aa5c69d12c58"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.110"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
