class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.23.tgz"
  sha256 "78c308d55ba1f4fdfdbbf047b75b723b1cbb35a73f6011359bea8a3e4fed5982"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.23"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
