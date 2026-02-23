class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.29.tgz"
  sha256 "3abeac1787ff8501e2559cc8f49659a5d9529092836df8066e9cfc86d831ba36"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.29"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
