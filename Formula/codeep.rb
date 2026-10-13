class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.11.0.tgz"
  sha256 "7ab24a41fa39df44ce66ce59f960fcb918d8ae69b60d0ade6d7cabb0890cbd5a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.11.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
