class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.2.2.tgz"
  sha256 "c3124dd03f737e53eccd977b6b435d3e893b1202a7dda8c9bf9ebb959a5c6403"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.2.2"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
