class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.80.tgz"
  sha256 "e6ea8cdc1bcd9a4349fc22f4f8411733b81af9eb4891fe4370f62a983f0e1f74"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.80"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
