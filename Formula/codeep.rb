class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.25.tgz"
  sha256 "d67902188b0d672310e89cfec5196586d3d6d97923b2a36b487d98438ace65b6"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.25"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
