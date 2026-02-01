class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.124.tgz"
  sha256 "2ecfe923d5db71e93787d4acd3402ca89333be905ddf9fdfc154406bd8f3f936"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.124"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
