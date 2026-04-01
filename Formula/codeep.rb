class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.126.tgz"
  sha256 "6522eb0b177dcc936a7101d8b4210b40134801b5b8dfeccafe4b59994b239fb2"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.126"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
