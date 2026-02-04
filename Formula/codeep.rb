class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.131.tgz"
  sha256 "8117e3fdfe99a7d5424eb835d73d03defc475adf78d27e9104e4259bbbea7a85"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.131"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
