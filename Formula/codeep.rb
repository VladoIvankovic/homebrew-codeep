class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.72.tgz"
  sha256 "488661114c0df94e4d289ddcdcd46109600eb9eb74d77a394b976a17b51a90ef"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.72"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
