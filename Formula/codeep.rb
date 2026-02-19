class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.16.tgz"
  sha256 "d23d2985bc949ea563d7d6a02c4d6bcf83ffc0236f51f7b5669d16f352bb469b"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.16"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
