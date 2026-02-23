class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.42.tgz"
  sha256 "d8b4f2b975f4696b22df6b9c48771848c61d1002f5f41b684043169ce9cb31ae"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.42"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
