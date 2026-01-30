class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.91.tgz"
  sha256 "8ff53a1c0eb1702bb683df7526fef249eb5cc50b642986d2e6d23b9912922538"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.91"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
