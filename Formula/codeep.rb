class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.83.tgz"
  sha256 "d43fcd93bc90c40042c99fd7afe2fabe73c7b49d5bcf9bbae28f73d68471f859"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.83"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
