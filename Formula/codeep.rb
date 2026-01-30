class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.84.tgz"
  sha256 "9af1b18a64116b78c2a8a41a08f909646455e9ddab92a840a20b7e3b83e361b2"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.84"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
