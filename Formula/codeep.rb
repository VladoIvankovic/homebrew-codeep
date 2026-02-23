class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.26.tgz"
  sha256 "202d610b6a97d77c49b5faa1816b4995b3592bd5e314d8aa91c5948688396b36"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.26"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
