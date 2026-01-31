class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.120.tgz"
  sha256 "09580b29b746b25277df10e378463c9f449d887d6ba77384031fc683e9892339"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.120"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
