class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.32.tgz"
  sha256 "37871919e1aed01b95f38ab3be31067caef6512b39cf0b67d807147c4f016d33"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.32"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
