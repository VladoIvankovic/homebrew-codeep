class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.8.tgz"
  sha256 "0cbd13637d9f8ca22ca9e3dacab074d952c7398da29ed825f4ed77565e75fdf4"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.8"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
