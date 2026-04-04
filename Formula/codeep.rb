class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.149.tgz"
  sha256 "609fcfc0a5f0ef95f951dab6b7e8b152075e25470bba64f7ce10d628f7f55396"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.149"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
