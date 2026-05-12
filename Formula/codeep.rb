class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.42.tgz"
  sha256 "a5bb990b59381ff59062fa50de693c568e80ab8902f877926e4e19d7a0f31c0f"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.42"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
