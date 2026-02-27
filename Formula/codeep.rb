class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.79.tgz"
  sha256 "fcf5051c559069958fed7e71c8aeb321d8425c72b77713391b61a82242f494b5"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.79"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
