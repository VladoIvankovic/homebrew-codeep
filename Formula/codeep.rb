class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.82.tgz"
  sha256 "e25e4351d6175e5c679f0f761cf7188eb272373a20fa419296cfde62c9d6862a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.82"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
