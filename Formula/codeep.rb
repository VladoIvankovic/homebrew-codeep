class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.54.tgz"
  sha256 "a253927a5df3d6b99095f404ee4b3329c173ceca91800dfc653eb182c6a2707d"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.54"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
