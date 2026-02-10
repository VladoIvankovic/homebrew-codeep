class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.0.tgz"
  sha256 "2f83dee238879bcc6b6c64728f0b1bf1e5fec21de5c31e08505e8076855f7bfd"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
