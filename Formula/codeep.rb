class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.55.tgz"
  sha256 "565ff64cda9e24fa02674830b8672503d8dc9df218c4a756c8f8f3f05b599b64"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.55"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
