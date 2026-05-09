class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.39.tgz"
  sha256 "68fb4af5d2d7f984f0a521769418ae883b108a3a00fe71fc28716cff39509836"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.39"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
