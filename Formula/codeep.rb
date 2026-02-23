class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.28.tgz"
  sha256 "b7885e69af50425fb1ac6a7cf74ad92afc7e8d463ab456e7017ae20d8bc76c01"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.28"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
