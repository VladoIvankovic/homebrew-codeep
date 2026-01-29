class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.34.tgz"
  sha256 "f869d1e2f1ab7c602069c309a5060fe1f4e51401f004c01864dfe883368f0421"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.34"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
