class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.102.tgz"
  sha256 "64bd0e00cf7f874c9776c11b11b2c0177a11698b07032d15e68a0fbe12c597d8"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.102"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
