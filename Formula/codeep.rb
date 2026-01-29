class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.22.tgz"
  sha256 "711f447307c9844dbc586ec34ff975597f9888bf618daeb36d3cd6f0b7e9d743"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.22"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
