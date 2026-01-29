class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.44.tgz"
  sha256 "c4f1c653f1052943c11f4c1741baf40d81a430fabf18fb60321b1931df8994f5"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.44"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
