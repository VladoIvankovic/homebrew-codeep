class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.104.tgz"
  sha256 "a28466f55f03610c46600eb00d8237f05a306e103c7b940db52ba999433c1618"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.104"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
