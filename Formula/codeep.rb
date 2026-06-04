class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.5.0.tgz"
  sha256 "574675991edc7b44b096deaaa3fdd15278b340a0d67a4c0d2814acab70999df7"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.5.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
