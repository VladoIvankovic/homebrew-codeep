class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.2.0.tgz"
  sha256 "14eaa0a21aef24cf2174d32fcf6c6cd3e4e36fcb86c27db7df90369f6a3685d7"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.2.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
