class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.47.tgz"
  sha256 "e4f7d58a165635a5e5ec390751f220189b8e69ea2a5551f32d3b64997c9dfb65"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.47"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
