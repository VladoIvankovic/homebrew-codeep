class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.21.tgz"
  sha256 "b77e02d95f0605419012e1ee9d20d905e14f6272b79bd2e54570b1c503a788a7"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.21"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
