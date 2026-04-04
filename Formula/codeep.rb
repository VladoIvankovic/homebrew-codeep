class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.145.tgz"
  sha256 "67cdd46201be79d92f5965054a19317740742eaf5d9dbb7b969237f5f5564d42"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.145"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
