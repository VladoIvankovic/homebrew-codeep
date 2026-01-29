class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.47.tgz"
  sha256 "3eb3c23a60ad2ffe032ee0fe6d1d940eed00a8535c54a91d68d48bd24dc42595"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.47"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
