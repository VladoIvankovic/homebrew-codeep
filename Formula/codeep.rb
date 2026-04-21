class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.32.tgz"
  sha256 "a44508fae4eb22238a593627f9c35ddec1e5b9e159851fa1231ac21c8b771200"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.32"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
