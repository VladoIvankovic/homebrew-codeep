class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.11.1.tgz"
  sha256 "d290e3f1e57c7a7a8992ccfabdab28fd7ea0024ce22bed768fdb399121396eaf"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.11.1"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
