class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.2.tgz"
  sha256 "cb1065b94a272893dd9521d0120ce1565cbcf5a57c4c2a3bcf4c21a0c5a7d697"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.2"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
