class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.0.3.tgz"
  sha256 "aaba5029091d110b7bdfeb73368312fb2ebdac8b7257037a11c3ac27da4c0f23"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.0.3"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
