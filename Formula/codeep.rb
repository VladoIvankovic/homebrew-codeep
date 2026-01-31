class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.112.tgz"
  sha256 "64e3438074f72355bbb970e91e8e0e463356cd829390e7a105829ba2256e5350"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.112"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
