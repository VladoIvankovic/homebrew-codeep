class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.95.tgz"
  sha256 "80afdd1906dc85d093d62d7863a6a135c925d931bc9f4f084c29c776fdb814ba"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.95"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
