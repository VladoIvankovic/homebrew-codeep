class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.126.tgz"
  sha256 "b70f0e66bae43a94a557606d9291383fbf9b2f0a0030bcb3ff2d80e322123eb7"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.126"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
