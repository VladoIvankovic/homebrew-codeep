class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.99.tgz"
  sha256 "9b7fe032153cf5559e2d2fb9ec40f57da0884cf13e163127b5132c1f021c5f67"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.99"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
