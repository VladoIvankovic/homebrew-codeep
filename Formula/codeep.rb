class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.10.2.tgz"
  sha256 "a7495e4b0c7a7314415da074fbe243bcc7f67a0a40bc4d046390a2d1a55671c3"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.10.2"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
