class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.81.tgz"
  sha256 "ea4b1bcd9cffbd55c82409fa21e157eb9de5ad65d2c9dc5eb6d3597577e1f69e"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.81"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
