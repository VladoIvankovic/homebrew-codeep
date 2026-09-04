class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.1.1.tgz"
  sha256 "9cddc060b6b749054958e943ac1a3b1ad8db8183fe5fe3aea53cb266af50b240"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.1.1"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
