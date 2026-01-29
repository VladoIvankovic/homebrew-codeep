class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.24.tgz"
  sha256 "0a02b88f1f17be7e111463a561069a40aed54e307545f1c0d7bfb5fc8733e29a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.24"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
