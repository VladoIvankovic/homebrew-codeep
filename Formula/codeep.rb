class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.86.tgz"
  sha256 "024747810c15bea85f7ce92e53d1c5f672944befb5a553fe47b4d401ecac1b5f"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.86"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
