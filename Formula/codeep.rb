class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.41.tgz"
  sha256 "09afb29c4aa4269d47929b6fa058621e88da3b2e49539bf9da6882878e167725"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.41"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
