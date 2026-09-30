class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.8.0.tgz"
  sha256 "5618cb13398806d757aa2d77b9ba1f7655e0c70ce066cde627cd8feeaca3fa5f"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.8.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
