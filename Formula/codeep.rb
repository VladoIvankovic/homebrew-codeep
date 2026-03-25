class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.101.tgz"
  sha256 "ce4f9051a141e2f90f4f8a8e677603b159cc36a377566a3f61bd8f15029c908a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.101"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
