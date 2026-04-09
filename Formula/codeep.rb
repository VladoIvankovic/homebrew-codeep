class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.10.tgz"
  sha256 "af4d81c1ddfbd9a9f4c6f26bc2624d9b7978018fd4aa0de4d1644e63d5daa573"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.10"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
