class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.35.tgz"
  sha256 "91a74b85d8f073a7746fdc71e2e9e08680903ecd24b6a66c9e218fdd6f3f1e1f"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.35"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
