class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.17.0.tgz"
  sha256 "8d9a677c9b0030b5a185f15827933e1ddd0d870802abf161e9cb1a0fa24e6997"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.17.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
