class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.25.tgz"
  sha256 "9b672c7de43967cb9624f5b10fe43f4b17b587081e2fac88c356e528eafb4936"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.25"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
