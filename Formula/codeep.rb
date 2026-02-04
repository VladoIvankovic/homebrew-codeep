class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.11.tgz"
  sha256 "8072163d1cc504972f0a02fb68f0004a73f9138114dfb5f4d978e951ab4b3fdb"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.11"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
