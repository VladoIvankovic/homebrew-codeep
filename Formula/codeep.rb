class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.18.1.tgz"
  sha256 "4c986a648cc9debb8ea5192feab1868093070e7bf416e69dcba410b4424d319e"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.18.1"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
