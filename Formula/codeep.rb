class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.43.tgz"
  sha256 "958f48e4ba6499e4689725e8f36c9b2a877b85b4fcb702311259bc81c9400044"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.43"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
