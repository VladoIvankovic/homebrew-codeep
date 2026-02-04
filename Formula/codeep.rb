class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.8.tgz"
  sha256 "0d00f15d60111c209fcdea71b31a61b2b1beefd05fbdf9de1320aeb56c8daa40"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.8"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
