class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.122.tgz"
  sha256 "42d6b2e6d1fc6e67a7a9f0a4746f1f733e3e9f83c3b2592402a795883740581a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.122"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
