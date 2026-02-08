class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.33.tgz"
  sha256 "44d53222014eda69f15c07470454a9336dbbb54f190dc82efaa37b4af7e65a5d"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.33"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
