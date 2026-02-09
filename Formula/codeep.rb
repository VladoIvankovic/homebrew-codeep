class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.35.tgz"
  sha256 "8c2ce3341b942fde23c0ccabedce207663e13d8486ce4f3b0ddb7d7af810ba98"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.35"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
