class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.81.tgz"
  sha256 "90d1c64133d31a5517c6d851a63dc6cf1ced7f290e51d343bce206c367eeafb5"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.81"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
