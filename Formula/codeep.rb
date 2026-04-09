class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.6.tgz"
  sha256 "c4bbe98ed952b0a52f590d4c85a81e12d74872289cd1835418939607ced02d66"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.6"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
