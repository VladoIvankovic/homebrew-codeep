class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.17.tgz"
  sha256 "64b9ae12716c7b4541b0918c48eaac7f4f3b88aca974d9e490ae8e854ab16e09"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.17"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
