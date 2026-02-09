class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.36.tgz"
  sha256 "356d3e2900606b2c3592b0459c20e970aa6191993afbc7af9a1a7fd13df8e3ac"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.36"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
