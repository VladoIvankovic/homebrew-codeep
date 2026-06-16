class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.12.0.tgz"
  sha256 "9e670770f8a3f63fe1578071018a1cea63590e381d94e45792f42e32e8b2760e"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.12.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
