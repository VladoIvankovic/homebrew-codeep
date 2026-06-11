class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.10.0.tgz"
  sha256 "0a29bea460dcab14a11ad4b474626634d9ead0170678133c3f4c00021d53ad0a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.10.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
