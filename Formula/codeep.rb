class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.0.tgz"
  sha256 "d9e03be1f4808be08b7655761df17d83b8c912a4759d53a0538939220b29ee4a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
