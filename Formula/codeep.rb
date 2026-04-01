class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.132.tgz"
  sha256 "11a296d4c9c2e8b69cd459e4aee8d95555b91f172705f85dded161de24959efa"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.132"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
