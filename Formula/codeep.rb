class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.122.tgz"
  sha256 "e6fc43de214d0fba26655b4cff4c3ae1b67207e4bcf7beef46a6016e9263588b"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.122"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
