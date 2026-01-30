class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.78.tgz"
  sha256 "c8e4f004b9e63fddef01dc97e54c547ad87224ef0add3d04beacc6a5cb14abbe"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.78"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
