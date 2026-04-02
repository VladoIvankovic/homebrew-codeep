class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.141.tgz"
  sha256 "f3cd72408e166ae647b23d217d44803ae0b88f8441cd63a70cd4dabd5977a1cf"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.141"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
