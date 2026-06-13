class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.11.0.tgz"
  sha256 "f41ca2d2639c67ff54c9a5003b7bd0d26573bdbfbb1da106ae4441e2ddd1fcfc"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.11.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
