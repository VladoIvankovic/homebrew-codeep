class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.30.tgz"
  sha256 "aead6dd82aecdadeb1567362f7782e5efa66073b1ddc89717c167292b325a291"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.30"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
