class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.151.tgz"
  sha256 "4837893bdd7e135e6cbd961879a4bf094ea617798f56fd44e6d16bd2209ac67c"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.151"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
