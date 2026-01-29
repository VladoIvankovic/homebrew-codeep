class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.20.tgz"
  sha256 "b3cf83a58db4c59aaddccbbd2c1f0707780e874ebec20429606c698a26795d01"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.20"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
