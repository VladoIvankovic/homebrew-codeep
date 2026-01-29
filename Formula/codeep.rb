class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.51.tgz"
  sha256 "c09509ab3b12caa0ea26b44184f461fcf5f7d0fdd82e723cefecef71daed405e"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.51"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
