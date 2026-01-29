class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.28.tgz"
  sha256 "d4ccd1636e1b3b4c946881b045400575192c2ac99361bf512c0832695d33cd7f"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.28"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
