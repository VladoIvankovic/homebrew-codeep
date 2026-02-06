class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.15.tgz"
  sha256 "5d8e05433b4409649dd17f6f20fe2bb6140c81b806962218146500d806847bb5"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.15"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
