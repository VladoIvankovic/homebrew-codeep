class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.116.tgz"
  sha256 "9a776b397f2fdcb4ac3b598db0f0b48fe2bf358a3ae2de1e96f9a6edef4b9936"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.116"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
