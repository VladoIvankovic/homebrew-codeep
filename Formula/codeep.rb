class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.61.tgz"
  sha256 "35d5941787ff51b60644156caf2d88ac225029be62544947c26b577089cf76f4"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.61"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
