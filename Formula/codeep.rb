class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.88.tgz"
  sha256 "38910a575dd907aa30b979ca9b84e4378bafea6e389a3f45686eba5f6b2fad52"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.88"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
