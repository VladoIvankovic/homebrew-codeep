class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.93.tgz"
  sha256 "730a689593c764fba1729c48129515b33ec96cc2032052afe89118e50191ec10"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.93"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
