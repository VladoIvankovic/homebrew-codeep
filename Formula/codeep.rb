class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.34.tgz"
  sha256 "84212d51ee22480faf17adff9837e96cbda7a15e6a9eefa2bbace2befbc01ba0"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.34"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
