class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.23.tgz"
  sha256 "85f0d1be571db3495048c07b8ef0c01bcb15f8e5ea0479bdad03a7a594105583"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.23"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
