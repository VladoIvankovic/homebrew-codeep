class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.56.tgz"
  sha256 "b7581b43177bf603b8ffed547be61847d1e236020dcda0358c9f6a414e011107"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.56"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
