class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.26.tgz"
  sha256 "a5655823bb6d907136e8d2610fa25450ba2696e8aa9465d12bc30a5c93037cbc"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.26"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
