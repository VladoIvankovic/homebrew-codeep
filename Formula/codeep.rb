class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.66.tgz"
  sha256 "0aa65333b2acc4e401385e16625edae180042acd73c92f7687947ae2d0587736"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.66"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
