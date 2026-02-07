class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.26.tgz"
  sha256 "9223a7c29b6ddd187223f6bf29a77f165c0b6ff53f7635a88f52e854eae49108"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.26"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
