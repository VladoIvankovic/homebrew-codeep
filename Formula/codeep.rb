class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.44.tgz"
  sha256 "e51e3928b09d4cbc691637dcb54b0633173f21da413dea9af1294c7ad5950b49"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.44"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
