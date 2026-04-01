class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.133.tgz"
  sha256 "8e132c4877db7ea3deca2698b40e55ef13e3d4c6f65ccebb0c7d89be1fa1bab6"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.133"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
