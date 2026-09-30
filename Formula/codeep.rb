class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.8.1.tgz"
  sha256 "9407638c455236616686fce7786df7392d93d64da4f22cff742178a7ddb3ddfd"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.8.1"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
