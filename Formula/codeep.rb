class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.74.tgz"
  sha256 "8327b0dfad26c6bc13bc9db163573541203f728102b2fae96f33d6b67655207c"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.74"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
