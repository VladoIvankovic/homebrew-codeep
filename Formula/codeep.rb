class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.9.1.tgz"
  sha256 "fceab213c5bf4a93f46012430a7f5a93cf146778d4edbcf0961a32396e32e107"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.9.1"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
