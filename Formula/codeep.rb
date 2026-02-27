class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.75.tgz"
  sha256 "e34e3f668bbad01325af43abe9c159ee9f94485e1e5a77e4ae2a7bc82eb6231b"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.75"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
