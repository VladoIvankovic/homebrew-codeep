class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.90.tgz"
  sha256 "2ff0efc73d5fd557f32710c82370b8c0e9407bcebcd2fba693a5b844f514c49c"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.90"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
