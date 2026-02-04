class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.9.tgz"
  sha256 "ceeb990739ad0ccf4d42c7f3e1d36f2af26d090236bde2276e32aafe2d5dce42"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.9"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
