class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.127.tgz"
  sha256 "ad782bd9e7227966d87a5525a57d82d265f3c2f7dfef4d1c8efcd6e160706c89"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.127"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
