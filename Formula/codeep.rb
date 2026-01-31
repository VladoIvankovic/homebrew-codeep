class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.105.tgz"
  sha256 "eff1448724ec136128531b3ab6678fb9a7d5eb0b7a551a96c2d708d9f092b886"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.105"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
