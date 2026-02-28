class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.88.tgz"
  sha256 "922ffa2dd1bc983ab2e0b81b212d9327b24d4d27c5a825fa566c20a94aa97f7b"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.88"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
