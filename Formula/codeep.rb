class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.34.tgz"
  sha256 "1f6801f0c0e6f9f2a7958e388a67c382b1c474cd11c40b5e01e0bccbbfc7d2e4"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.34"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
