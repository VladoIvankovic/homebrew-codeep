class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.98.tgz"
  sha256 "2a4b1784035a5bad3521fd07c504497e9161a7298e4dc78fab8a2cf3ab656c13"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.98"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
