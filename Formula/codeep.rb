class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.111.tgz"
  sha256 "0dc9ef3bc2438db8b595cd6be6838de675a69ee711d424836f1a0f4c1bd697b0"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.111"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
