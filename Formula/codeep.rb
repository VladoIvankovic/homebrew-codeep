class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.12.0.tgz"
  sha256 "e7d43aa2cbb7bc774755cc5e1d02a6d07eabd5eef322e7088a3920073945d348"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.12.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
