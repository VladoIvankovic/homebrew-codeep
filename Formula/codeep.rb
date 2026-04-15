class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.23.tgz"
  sha256 "90f115d35ae78f814976e782617868a9aea71fe38d3e5cd95ce8c99a9e5fe1c6"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.23"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
