class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.59.tgz"
  sha256 "52b67dd29f014e61b12001464820896e30ae4531e9673280f97d5c2044297b2d"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.59"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
