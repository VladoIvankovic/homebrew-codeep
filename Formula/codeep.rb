class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.8.tgz"
  sha256 "29e75f31f2c3e3abed4e4d555cabfa7d846388e014696cc948c2903ce4432353"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.8"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
