class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.49.tgz"
  sha256 "2cd5e2ce40ed4da8f8838d2c2cbd0539100f3ab2d4e908607d69b0e4b333fcc8"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.49"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
