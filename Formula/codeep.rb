class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.85.tgz"
  sha256 "0febb5c8f9cacef956ebe376b96a7e556c889484c5d1128df103d22788c13a4a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.85"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
