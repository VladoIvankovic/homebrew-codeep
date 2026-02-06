class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.14.tgz"
  sha256 "5c12d45185c6946b6c47fa0a7e74b27ff5a3e11b1a37f2c8fb561c9a516b1d81"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.14"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
