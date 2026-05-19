class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.0.4.tgz"
  sha256 "4825332d1094e2087ced69cb2a5ff38734d1abab6db5551ce0900f2c0254dd25"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.0.4"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
