class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.135.tgz"
  sha256 "0897c40f17f17b19f3e154b1dc13a526c43726c2a3edd6e7bc847b17be84020a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.135"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
