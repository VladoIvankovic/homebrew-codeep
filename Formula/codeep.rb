class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.34.tgz"
  sha256 "c3ef9d9f1a9bc6c21084f7d887ade6c46f659435f56e71e957f34475e212f434"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.34"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
