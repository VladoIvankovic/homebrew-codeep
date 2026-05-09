class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.40.tgz"
  sha256 "ca3c090f06432e72b4c6a1f612bf10ab1702bb1503cb5918ad0cf565f04fa520"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.40"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
