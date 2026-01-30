class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.58.tgz"
  sha256 "132530e29af1f8e8a3f612dd8b7fd3e339ea5633b1e28207c362dc1afd3c1278"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.58"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
