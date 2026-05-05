class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.38.tgz"
  sha256 "c240d46f60faf2a8c48ba44ff418be7a0888af99d392dbb64092396163e65892"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.38"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
