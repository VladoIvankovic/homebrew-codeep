class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.128.tgz"
  sha256 "65c30067fee0c9450749ee145065ae486152aa0f5b5fe920aebfb2dd682a20cb"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.128"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
