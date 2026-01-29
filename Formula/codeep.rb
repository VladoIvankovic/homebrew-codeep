class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.18.tgz"
  sha256 "b56caa3fc1bcba63d682d6079a88455edb747362f4a3081b574a38c5e4c847d5"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.18"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
