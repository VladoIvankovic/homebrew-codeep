class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.72.tgz"
  sha256 "a9cedc36a4b16cba34cd2ec9d2b2dbf7aae3714dadcf64307a887ccdf0d739ec"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.72"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
