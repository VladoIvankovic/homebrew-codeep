class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.125.tgz"
  sha256 "335b55d99cbdb0635afb89347564a4b3e5110f6051bc0135b09ef071ba6c0fee"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.125"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
