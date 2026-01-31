class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.101.tgz"
  sha256 "9108840cb23c97fcb009bee2460e5570788ada017dfaf3ecd756d117e14673e6"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.101"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
