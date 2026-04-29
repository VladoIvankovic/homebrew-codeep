class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.37.tgz"
  sha256 "a952487d7d855e1b86439c52db6c7ade83009e2944d9fc164fbc77c182ce65a8"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.37"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
