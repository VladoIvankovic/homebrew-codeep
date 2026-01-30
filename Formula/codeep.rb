class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.53.tgz"
  sha256 "d722e473955f00f210d8d979fb0f9bfff921892c5beebeca75fa957ddd9fa9d0"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.53"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
