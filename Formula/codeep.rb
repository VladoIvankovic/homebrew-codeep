class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.20.tgz"
  sha256 "d64fdfad76cf5324f2cbb8a35b5cf97ff3c195393c15de5fef2a06f1d76d98c2"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.20"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
