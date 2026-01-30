class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.97.tgz"
  sha256 "a10299d6dbfc46d7ebbf1ed74456da0f2ac37223c5fc7d281ffa8603c4936f8e"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.97"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
