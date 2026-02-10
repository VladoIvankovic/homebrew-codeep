class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.7.tgz"
  sha256 "9b0ed64ae6ffe078e5c997aefe088195b27fbeb0d8a66340d37dd7e02b2ffabc"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.7"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
