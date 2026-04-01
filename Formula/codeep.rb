class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.136.tgz"
  sha256 "917c9153e363e9cf730f2e4a397bb8baf89911dc3dd7e893153aa4ed9e406cec"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.136"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
