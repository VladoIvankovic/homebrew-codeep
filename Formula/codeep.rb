class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.18.0.tgz"
  sha256 "362586f5b81c71e2d623d9df84d8f83f21f5176f7e5eb5ec89183d201e89bc49"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.18.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
