class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.70.tgz"
  sha256 "4f8001274fe2d22c5f593f51f16ccae34645b9cdb0f15f09d6b7f1127d3c068f"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.70"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
