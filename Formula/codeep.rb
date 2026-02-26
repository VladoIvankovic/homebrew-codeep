class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.62.tgz"
  sha256 "50dc0f79dc887a68234d618ab82dd18a6f828250d29d1df5eab77ba920f873ac"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.62"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
