class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.50.tgz"
  sha256 "43cc6b3d8cc6f7b199e6574f2fdbbb87596e0f801017ba1495cae1b5e0e39f63"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.50"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
