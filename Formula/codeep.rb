class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.32.tgz"
  sha256 "440496720e0da9e8f9a4ab33c7ee15e5c174eb96fb16d61d9c8ad330adb1057a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.32"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
