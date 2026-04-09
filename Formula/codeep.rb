class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.5.tgz"
  sha256 "f7e591f193eb84d5285582225bbdcd813fcc53076b20db195311eac607c60558"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.5"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
