class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.63.tgz"
  sha256 "cdffc9779486c89bcfb94bf325e310b5e599c7729aff2a0a4f965a00ded4bb4b"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.63"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
