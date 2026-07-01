class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.13.2.tgz"
  sha256 "a96137c6ccbe3013b22c3b79f2a6fb9922420a0cbf268c69fbacc7aae3f74776"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.13.2"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
