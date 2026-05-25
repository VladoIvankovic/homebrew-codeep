class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.3.0.tgz"
  sha256 "0a8be44a758be0a03ea01536281d12094093d31638ee97b58a943380041c10f3"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.3.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
