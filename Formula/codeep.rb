class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.7.tgz"
  sha256 "76f0106b4ba1517ed0ba38fb5a31e79ca4a9c90dfe39e4a6426d1c61aaf6892a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.7"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
