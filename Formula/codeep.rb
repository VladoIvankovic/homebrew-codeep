class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.10.0.tgz"
  sha256 "e2993f92aebeaab8241e7fc76c9345e424675a9a0350f687de7fdb656eb679f6"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.10.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
