class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.13.tgz"
  sha256 "ea82673ba66f83687e7382ef964f51b567f6a0171e5a87521b3c4cc409d27c49"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.13"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
