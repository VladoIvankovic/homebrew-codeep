class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.62.tgz"
  sha256 "7989ab7883b3845ff96f77bedfac3b66ee74f2ef6fb50545b8f70124d7dfaa0a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.62"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
