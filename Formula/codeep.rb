class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.98.tgz"
  sha256 "24a0830941fb3ce77793888cb8e0e1a8e9ddb36bebac0fe92c8abb1b4d2c8da4"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.98"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
