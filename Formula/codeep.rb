class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.128.tgz"
  sha256 "adff1f3c1c0f873d72e169fa2688df4a56c7d9e21b304d8b96c9ae91a4d3ce22"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.128"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
