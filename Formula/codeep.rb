class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.31.tgz"
  sha256 "6fe1ca3bb4a9c62eb48f34ac725c6d6fcdb66a8b38d9473109bfb706c6a9ec9a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.31"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
