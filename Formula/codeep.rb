class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.38.tgz"
  sha256 "dd3ce5c1b801df1b5c2f9f500bbafc00be46a039b9d405b0ed98129e7b7c372b"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.38"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
