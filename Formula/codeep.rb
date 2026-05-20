class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.1.1.tgz"
  sha256 "3e8f54afae5279e4833a270b128c3c98e5fc93aee94c9924a85b7a64d0a9baff"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.1.1"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
