class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.84.tgz"
  sha256 "31bca799eb17b93ded543a291b731b093e3f34dc3d8b12b9190b0d070440300c"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.84"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
