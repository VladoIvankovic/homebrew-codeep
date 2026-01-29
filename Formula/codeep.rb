class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.35.tgz"
  sha256 "5a5f8569e271a0d3a8f739dabc2e9c6583a2ea92580adb3c71ecb25583166ca3"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.35"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
