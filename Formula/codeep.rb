class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.28.tgz"
  sha256 "40e4cf222b8edc0a64dc0bc114d4326a1ab7f6cd3fd40e9a3fc522bece36ecb3"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.28"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
