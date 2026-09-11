class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.3.0.tgz"
  sha256 "66fcc68882eb79814d7f39edf02e4ea7b18120a2e447539760e25bdd82f9ef7f"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.3.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
