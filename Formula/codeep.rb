class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.19.0.tgz"
  sha256 "865aa923425ab01fe4a4458c4001ddbf2d6164d8fadd13c89ecd7040c8872015"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.19.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
