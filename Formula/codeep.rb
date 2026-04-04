class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.148.tgz"
  sha256 "74cb0207fc568d3b17f3a8ff879b9ded508081f409a4e55d212c4a5daeb13bf1"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.148"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
