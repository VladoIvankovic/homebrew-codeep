class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.103.tgz"
  sha256 "04f86b8e5268cb3a8af8b96919a7da2305258a4d2ebaebf93c7da178aab15a3c"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.103"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
