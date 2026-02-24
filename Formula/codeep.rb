class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.48.tgz"
  sha256 "ed2d9bacaf163b857891bb64bb492a143703ed78821ef54c2a09dab4a324e8f6"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.48"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
