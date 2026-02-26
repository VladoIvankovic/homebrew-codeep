class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.64.tgz"
  sha256 "43cd4968caa34d42a2577b778f20ac42c3fc2c0eb16ab77494f130d7ed014fc4"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.64"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
