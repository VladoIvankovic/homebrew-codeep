class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.3.tgz"
  sha256 "96f84566f6c2288687f5e5c5c9192727cdaab3d28b714830c7af96d905a67f01"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.3"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
