class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.110.tgz"
  sha256 "eefcb3f6c94e0df7405bc0a908de5d1701bbb4f353122c25bc67c23c727d0b3d"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.110"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
