class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.0.0.tgz"
  sha256 "fd741f759dcb437c24829d4c9dec5d6e9af2978508f940b0f05722df26167f2a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.0.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
