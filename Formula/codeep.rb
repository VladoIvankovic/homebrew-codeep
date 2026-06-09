class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.6.0.tgz"
  sha256 "b5663c05437b5e90dc109ab49e65b81801fa2485965006b58f86126302464e06"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.6.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
