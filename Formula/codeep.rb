class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.19.tgz"
  sha256 "9af1dcccdcc6b4cdf7d9f13412df2be9b72fdea37773e4ff2bf5db351e006fc0"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.19"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
