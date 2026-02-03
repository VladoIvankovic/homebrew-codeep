class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.125.tgz"
  sha256 "7dd71e33bb7863bec02be1939a7e038e176b4a2f3f23cfa1c1928839cde72298"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.125"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
