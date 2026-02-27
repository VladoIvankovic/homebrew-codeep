class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.76.tgz"
  sha256 "000e4638b6e0ed35456346d5b2d362f7c332cdb5f0a192612f87e99c9c81a17e"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.76"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
