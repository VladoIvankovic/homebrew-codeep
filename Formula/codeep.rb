class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.2.1.tgz"
  sha256 "97defd441f1717f9ce5bd35d4f662f62eda5d6db39549c1e8c4b72c6d0bcf66e"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.2.1"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
