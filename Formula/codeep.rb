class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.53.tgz"
  sha256 "828986ac5302dafd3221f39e52f7ed4e06ea55c4d66f5a324048cdf697fb35e0"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.53"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
