class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.100.tgz"
  sha256 "ec52fc7310b42502c0b1eb6c15e79db9783cda78a21e99704cf58901f0f2078d"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.100"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
