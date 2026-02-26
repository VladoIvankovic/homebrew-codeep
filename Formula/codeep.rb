class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.69.tgz"
  sha256 "e30b8f9f1a981d4fa8adfeeb9e8f890beef98219cc477f1a1f3742e998522a91"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.69"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
