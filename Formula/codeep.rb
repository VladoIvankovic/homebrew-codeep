class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.36.tgz"
  sha256 "74733013bbf369cc99c28f1a6d80e819528d23a20e9767d6ae28f52e9d78912c"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.36"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
