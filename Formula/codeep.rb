class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.5.0.tgz"
  sha256 "6c210f436fa9cc7e081c50dfac9014a02337e1f8389ae2a050458605e7d9f49c"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.5.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
