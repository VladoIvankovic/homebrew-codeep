class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.121.tgz"
  sha256 "679aa19806aae29d9a72b96076fbbfd9253f23c4642e1adca21afd9d6204ac74"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.121"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
