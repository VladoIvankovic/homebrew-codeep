class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.33.tgz"
  sha256 "2dd8c3c9a0869298f8a3e2fe1ee8014039c8407546a2599fb454231f49a62269"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.33"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
