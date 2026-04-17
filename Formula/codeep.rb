class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.31.tgz"
  sha256 "b99e29bdc0458283e423bc7726e4e3dbd43334da59198f80bb33f26a69514cdb"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.31"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
