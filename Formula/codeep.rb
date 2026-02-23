class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.24.tgz"
  sha256 "db600978f776b8350794d21efb2445efa7964baa22794109343eb7e01f6722c3"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.24"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
