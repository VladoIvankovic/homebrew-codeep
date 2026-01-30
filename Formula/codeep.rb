class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.60.tgz"
  sha256 "a7b9cf87bb30d2373511dfac75d3464e4c02ddd8e01e1075164dc612c8506e48"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.60"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
