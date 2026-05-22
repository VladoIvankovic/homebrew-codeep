class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.1.3.tgz"
  sha256 "58200e3da9ed7fb936337b8b8cf25944dd0552b77a1f6210bdc20280468a8976"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.1.3"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
