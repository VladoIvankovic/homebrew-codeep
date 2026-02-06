class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.19.tgz"
  sha256 "4f76b946005ec9ad5d052894cb73ecff0abe714b5153df1285ed577d995846e9"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.19"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
