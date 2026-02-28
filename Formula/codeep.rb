class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.87.tgz"
  sha256 "62f69e6efccd04f6192665d44d67608dfab34858425cb26e231334343a8168ea"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.87"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
