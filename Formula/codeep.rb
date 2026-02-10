class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.1.tgz"
  sha256 "aaf9872bd7de9d3e93650f7acf48f31584a22c9c17c7079774b9f8dd308c212a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.1"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
