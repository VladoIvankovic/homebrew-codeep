class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.3.2.tgz"
  sha256 "6bfc025c51ce19f49bd614047e2d707e3f58fd4d04b80e9d3aa89618b070ae16"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.3.2"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
