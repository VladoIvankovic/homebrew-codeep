class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.20.tgz"
  sha256 "69efaaeb683b99ae39f5e4d7307f91417b085b8b4809706707192e499393e42e"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.20"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
