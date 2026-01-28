class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.7.tgz"
  sha256 "811e0e022618483df0061d0159bee33c49a59cccbd5943c722f6fc445df2521f"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.7"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
