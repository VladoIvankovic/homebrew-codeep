class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.153.tgz"
  sha256 "0aba6b34c3bd1e2a78a968a2ab67ccc708b1ffa9af998a151cd7a0400f5f72a0"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.153"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
