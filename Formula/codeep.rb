class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.127.tgz"
  sha256 "07b58bc2d2ad9930dd81ccd8f0d5bef6dc2abb855f373924102e7a346bc1b325"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.127"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
