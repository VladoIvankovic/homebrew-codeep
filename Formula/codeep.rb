class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.71.tgz"
  sha256 "0a006cd2d44ddaec590b5e47357d2a097c8af2e029003b268fb011043afcc673"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.71"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
