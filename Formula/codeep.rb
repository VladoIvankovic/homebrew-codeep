class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.77.tgz"
  sha256 "0e7d6655b5db92629c45c1fc90b1ee11d25e05c8315065a67378062640201851"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.77"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
