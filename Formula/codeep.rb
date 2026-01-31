class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.102.tgz"
  sha256 "e8ff75a68f403467b53f03b0f2d65771372d856f5e7e51b56f2ca062f1a415df"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.102"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
