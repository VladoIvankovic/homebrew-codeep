class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.4.0.tgz"
  sha256 "9f8214def220723b4364c002265c7f2e7044c6d8631e18a52cbf7ef54ee6be1f"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.4.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
