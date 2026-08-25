class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.24.0.tgz"
  sha256 "a0a7a037f980eb961889e68a3af513616abce85c8fefdcf841573f7011dd4b82"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.24.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
