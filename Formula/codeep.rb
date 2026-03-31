class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.123.tgz"
  sha256 "b191c20cf4a9b7a8f8fde0a2a76ac0d0b8e9569eaffe9ebfe04744dc51372eaa"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.123"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
