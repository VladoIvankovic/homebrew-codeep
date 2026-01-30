class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.54.tgz"
  sha256 "f5b82f5a8b3a458bfc590840fe1fdf63e305a6c76dd0f1d5c58fd9636c7d6bc9"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.54"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
