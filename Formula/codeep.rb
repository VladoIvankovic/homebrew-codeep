class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.5.2.tgz"
  sha256 "58aa2f97f00b2e1cc1c68d6602d3b131dff11c61a1d5b1e4d33a6e45b51cb135"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.5.2"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
