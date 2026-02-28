class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.83.tgz"
  sha256 "211a0d70adf5ac3026e00a1dee4f49e436721e5e1cd2027bb8e22e7541738228"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.83"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
