class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.3.tgz"
  sha256 "9077f8b1af08a5a9382dc83debf7764a27c0e0cf391863f56c870d0783f1fca0"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.3"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
