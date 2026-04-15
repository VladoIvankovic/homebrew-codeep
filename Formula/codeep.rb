class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.26.tgz"
  sha256 "c2d373cef73c10901df2b9bcf7b107ce11f45984c1c967892df31df5177cbac7"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.26"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
