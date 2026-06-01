class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.4.1.tgz"
  sha256 "96f0913a20d0e64eb673ccd7fb611749a2cb4d51213531040c33c6f6d62fbbc3"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.4.1"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
