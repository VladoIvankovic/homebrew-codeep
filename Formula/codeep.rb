class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.9.0.tgz"
  sha256 "a3d6dc927efa76e032c9992ef08b89ca1cec0444bdccebc6686acfbb2644a2e6"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.9.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
