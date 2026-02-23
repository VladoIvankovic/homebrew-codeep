class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.35.tgz"
  sha256 "327f2bbf7838565d22c48b14cf8287a9eb7971a63a061ebc9e645ec68b89acd7"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.35"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
