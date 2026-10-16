class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.13.0.tgz"
  sha256 "a8cb950543e0cd6aeee7c7e6d0c73a61fbd49e0fcee905acc09465973c504a77"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.13.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
