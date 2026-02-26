class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.61.tgz"
  sha256 "232156c822f30c2dfe1f4593b48d2c1808c612487131be551139895fc5652fdc"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.61"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
