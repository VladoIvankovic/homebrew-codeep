class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.89.tgz"
  sha256 "d72e6c898bce4f795d1326f69d122bad93be9f04449aac0feda1d249cbd22151"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.89"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
