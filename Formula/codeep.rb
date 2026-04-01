class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.130.tgz"
  sha256 "9e45bb3cfa18631fe816026ca81aeacfc0f98221046a065b71262616b1f7f57a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.130"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
