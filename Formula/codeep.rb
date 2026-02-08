class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.31.tgz"
  sha256 "4f5ae6e6231f67aedfe2e50b4de8ffc6daa39aad714259520a065b10d24fdf9f"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.31"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
