class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.16.0.tgz"
  sha256 "fb9145c715a118776f98e824223b734f2b9b7ba4fbfb416810a4e07ada737954"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.16.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
