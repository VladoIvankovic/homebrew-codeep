class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.13.1.tgz"
  sha256 "b068db9a196684f1de98768d0733a6840eb2a28d35f3b00798efee8c93119159"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.13.1"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
