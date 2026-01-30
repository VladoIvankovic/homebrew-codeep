class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.65.tgz"
  sha256 "7b4d873accb395d9fe5769635638e8be9dda84351f927230a406958f6db11672"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.65"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
