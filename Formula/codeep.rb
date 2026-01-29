class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.49.tgz"
  sha256 "98b9337fbd76f11543508acff2f4e846a97c26abbfd447bb2e8b2668b95d8d5f"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.49"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
