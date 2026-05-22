class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.1.4.tgz"
  sha256 "4af7120d882ab8eb970eea2243ca922eb3af6ffe7affca1723fdbba65e14e2e8"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.1.4"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
