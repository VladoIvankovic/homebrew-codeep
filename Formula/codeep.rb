class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.6.tgz"
  sha256 "ad3bf3fc88c1c5ac08c9afaded97f317c80282a39c4945fec9b667a693725c33"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.6"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
