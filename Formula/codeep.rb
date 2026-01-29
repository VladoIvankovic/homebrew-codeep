class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.33.tgz"
  sha256 "087864ebe31502439f8886d89f5e2e2b1ab5842721dbe9eb3ebf1e85ed5bcdce"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.33"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
