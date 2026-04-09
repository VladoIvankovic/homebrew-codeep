class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.15.tgz"
  sha256 "f1d9348a7d1320f0b1857561435deff82ad42ebf3db8a86d65f1a0942b6b77c5"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.15"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
