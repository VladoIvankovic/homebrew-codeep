class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.3.3.tgz"
  sha256 "bb440a3272a94d825f57be538914d7ea1a6f5c5778605cc1e99a1c6b1e986697"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.3.3"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
