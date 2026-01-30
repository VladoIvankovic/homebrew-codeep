class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.56.tgz"
  sha256 "b1a44c0cfc4d3ad5dbf1061486442bd5aea85f93a18c0d7b93bd6941722417db"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.56"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
