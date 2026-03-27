class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.111.tgz"
  sha256 "b1f43444d4cad29567e0f1840efd174748ba68a27fb9bc282199abdca334cc4b"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.111"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
