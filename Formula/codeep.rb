class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.11.tgz"
  sha256 "8ca04d0c4fb08762036808b0fa196ddd829bad6b7a54fde8a28ef2e6527597a2"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.11"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
