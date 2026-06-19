class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.13.0.tgz"
  sha256 "f0b4004e37c2561764a2c88b0f382fb4f3827c6350850acb6c530fe12ab3ec74"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.13.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
