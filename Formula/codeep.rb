class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.130.tgz"
  sha256 "485a051d4518d4de2ddc71f6c999d4326608a6e564a342366d294402d3815278"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.130"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
