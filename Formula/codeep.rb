class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.24.tgz"
  sha256 "7f457f4ff2ba6effcb5a2f65c64b12951fad2fdb82a86ec275fdb5afb3c4bd39"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.24"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
