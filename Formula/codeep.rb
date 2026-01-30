class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.73.tgz"
  sha256 "e989db79d3e64aa94f2a84c130922c922da326244cdac20a9d0e65e58f70704e"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.73"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
