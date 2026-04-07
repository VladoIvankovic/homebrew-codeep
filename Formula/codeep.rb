class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.155.tgz"
  sha256 "0f513e9a5bba4d06bdcb7a2b87166effb316026e6b9f151ad6d128c9d3a0d182"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.155"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
