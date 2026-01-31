class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.123.tgz"
  sha256 "bd6d805f0c90c2c27328e5c99e6e1e9b0f9d3c40bbd4f3a1d7233203ee688795"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.123"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
