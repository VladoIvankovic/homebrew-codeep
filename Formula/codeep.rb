class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.70.tgz"
  sha256 "de9c82b26ae2ac0637dabb683b8d80ba43d38976cf2b11b28c6c3b57dff12b3a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.70"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
