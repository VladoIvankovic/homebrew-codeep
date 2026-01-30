class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.64.tgz"
  sha256 "3cce87f654be8b1fa434e6f9ce708264a62de06da8f3c4f5763fd301265c8590"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.64"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
