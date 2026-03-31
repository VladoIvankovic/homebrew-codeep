class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.118.tgz"
  sha256 "b216fead70a5416839845425046e27c2130fbacfa6bdebcfa6e52aee0ed34a29"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.118"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
