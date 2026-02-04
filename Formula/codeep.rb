class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.1.tgz"
  sha256 "00d4ac7caa511cac234570edf3c4c7af3b68b5fb09544b51db380e78fd89606a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.1"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
