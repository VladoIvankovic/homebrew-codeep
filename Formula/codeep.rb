class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.1.tgz"
  sha256 "0f899a506e2b5f41a5feeb4776470c821d7e9ad3d7e644b0052a73864c0a51b2"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.1"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
