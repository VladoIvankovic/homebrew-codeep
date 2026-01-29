class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.12.tgz"
  sha256 "13a3fa17787d35ebcb4026534a89ded115e6e1dcdc4173903552331a80aa4e6d"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.12"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
