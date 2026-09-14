class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.3.1.tgz"
  sha256 "6c613c315e41c6f461a9afc05ce0cb9b26d79aaa6734c87d9c715cb08763f77f"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.3.1"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
