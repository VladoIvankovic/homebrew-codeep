class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.6.tgz"
  sha256 "559fbfd3e5bf7034b737c0b2c742c364a73ae13993808b1435f5f7a20ceeeb04"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.6"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
