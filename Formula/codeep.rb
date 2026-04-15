class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.28.tgz"
  sha256 "3d1964a477f9d2da1887227a198df66c296ae717aad299c1cd88fcc0086288d2"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.28"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
