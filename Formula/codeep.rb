class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.16.tgz"
  sha256 "88304498fbf69f4279d1eba4310f7646acddfe2b9500f5042e5e5391c7ddbbfb"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.16"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
