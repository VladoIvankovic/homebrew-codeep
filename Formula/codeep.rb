class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.12.tgz"
  sha256 "aaf1d5ae8d37e9c13b8ed0571ebb240b66f653526cf8e3d4aefaf7b97e39ce0f"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.12"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
