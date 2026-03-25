class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.103.tgz"
  sha256 "57f790ae98f31dab32d8523b5e4e75f4b229929dbbba5d0c9552a4ec68a5e6e0"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.103"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
