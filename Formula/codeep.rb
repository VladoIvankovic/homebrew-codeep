class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.57.tgz"
  sha256 "2dba3fe1795e43c4d1e4197350d2297da4f877ec8214a0951b0fca89c8090fb8"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.57"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
