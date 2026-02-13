class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.9.tgz"
  sha256 "6f13ad42fc98a4f70f3193f6ffeda23dc457c90c73081adda6fb9afaa5144aca"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.9"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
