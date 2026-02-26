class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.66.tgz"
  sha256 "e50f982e7e540c32be4b90a85d031dcb58c62d6fb7ee84d611fbd95bb58bda7b"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.66"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
