class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.33.tgz"
  sha256 "c05f018c0fd672b558387238e3e5053f3599af516f9946d60e9d275aa918deea"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.33"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
