class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.0.tgz"
  sha256 "624397d90df09222e187006dfc3a569de3c9cd6228d5225295cabb245e4781b0"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
