class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.10.1.tgz"
  sha256 "d74b6c9f2126cb9f99637a3b53a3f171b5fc37f1b41c7f1a042a1f638b7919be"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.10.1"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
