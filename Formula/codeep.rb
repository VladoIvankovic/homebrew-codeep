class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.1.0.tgz"
  sha256 "702b33a6bc6eaa66d6226f3629913ac6f3fdddc5fddbca4af3d9e17b860b11e4"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.1.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
