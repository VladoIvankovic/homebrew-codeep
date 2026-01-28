class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.5.tgz"
  sha256 "937b602e64887526ef7cf0fd0d1fcde0dd6640b4399ceed9a740c81c50524aed"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.5"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
