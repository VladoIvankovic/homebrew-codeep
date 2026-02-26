class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.65.tgz"
  sha256 "76ad07e581d098893b01d6f228328352e71d3de5b6e08b83b6c7f7314089bafb"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.65"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
