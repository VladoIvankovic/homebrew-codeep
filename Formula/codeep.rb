class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.160.tgz"
  sha256 "95b898a9b7b2e7aae15a81dc17d30057e6015a86f5765c7b8e20ef46ee472866"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.160"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
