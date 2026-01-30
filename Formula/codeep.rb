class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.69.tgz"
  sha256 "de02f127db29e3f837242bdeb09f16c977ce3ec406566c988f0736f52cfb5135"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.69"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
