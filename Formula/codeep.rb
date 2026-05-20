class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.1.0.tgz"
  sha256 "bb9bcaf9bded6d25b36419a517992d69fd46b6b077ddd15b2ff858a5bb743e62"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.1.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
