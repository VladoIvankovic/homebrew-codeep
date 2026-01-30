class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.79.tgz"
  sha256 "e7d612131ac03a4d8f4bee8d2e5028a4550968284071064cb3c69b0839ecfda3"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.79"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
