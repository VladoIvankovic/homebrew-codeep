class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.4.tgz"
  sha256 "3ac42a37e1e8c708d9819f204f1b3ff3fddaff36093696e98a28a6bb870570ad"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.4"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
