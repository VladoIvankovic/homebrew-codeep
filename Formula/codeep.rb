class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.92.tgz"
  sha256 "83ca875be0d18fd450db288f6cd71ca854e4a65328f3086845dc255c1da9d5e3"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.92"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
