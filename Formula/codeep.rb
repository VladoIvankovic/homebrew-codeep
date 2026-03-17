class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.91.tgz"
  sha256 "6402d079e30e38e44cf7120d8de8f8d9cbb38ab75cb78f652408e625853ba4b0"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.91"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
