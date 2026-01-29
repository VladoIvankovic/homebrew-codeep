class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.21.tgz"
  sha256 "64b3b7434c76a2a7b4b8455313a3a770c6fc039c00fe05e86fc2a8844871d358"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.21"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
