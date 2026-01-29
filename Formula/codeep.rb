class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.39.tgz"
  sha256 "6b2f1265133f4beb83fbd0d67949c37998f6cd4bc5b141fdadec565825b21fbe"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.39"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
