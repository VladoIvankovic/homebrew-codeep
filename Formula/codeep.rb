class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.4.1.tgz"
  sha256 "5793585c41c4911e657ca4f94f7182b5c001a3777ec5908be761d374064d5104"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.4.1"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
