class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.18.tgz"
  sha256 "332e56d9ac07d9b56132396cf25ecadc165b2580d4b6bd2ad907b2a82b930ad4"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.18"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
