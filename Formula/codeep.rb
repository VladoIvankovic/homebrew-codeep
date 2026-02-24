class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.55.tgz"
  sha256 "22d6ae8fd8062aa4882201ebce01aedfd0ef81ea185194e23f5b1dac3c071734"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.55"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
