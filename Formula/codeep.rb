class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.11.tgz"
  sha256 "b830184ad844d8cfee7bbd3109fe1b31c58f73bd059bf1d5e184dc1b3a80aba0"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.11"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
