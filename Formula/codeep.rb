class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.14.0.tgz"
  sha256 "df9e1f9c85b6bf134c4ce3f400d9026cb299d93f6c9ddaa17fb302eb3fffcd77"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.14.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
