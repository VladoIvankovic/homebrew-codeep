class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.21.tgz"
  sha256 "c383caee9b7278e51d025219786c0c0fec9e2406fe91a44183dfd8b4df3f5c6c"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.21"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
