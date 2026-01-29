class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.23.tgz"
  sha256 "91e478fcb4b35007aaf7ba20a3442943ec00b0b9f3d7655ad6db7dabded846c3"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.23"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
