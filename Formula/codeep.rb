class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.27.tgz"
  sha256 "17470888d330cee4d44f4d3cd45dfcefabfe630ac7d295fa57b470c811eee94c"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.27"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
