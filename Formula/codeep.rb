class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.31.tgz"
  sha256 "91727df0246018d5484512f1bf43d7b667919df0a8265dc098249088ac6fc0bf"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.31"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
