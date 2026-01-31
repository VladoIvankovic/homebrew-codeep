class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.109.tgz"
  sha256 "23a62821769b43ebf333b7d0313ff8325e60fc051acd0913b4a06da9d3b7f105"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.109"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
