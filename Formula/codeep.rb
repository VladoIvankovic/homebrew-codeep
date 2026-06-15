class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.11.2.tgz"
  sha256 "64634c72040f7bcff499522f0e09b48815692ba3e0095bf7cd21550f2d7667a4"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.11.2"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
