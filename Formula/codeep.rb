class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.6.1.tgz"
  sha256 "fe970be21ae5866d1840dae5a424ece3db263e344f0b2103157216a1a6b59a1a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.6.1"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
