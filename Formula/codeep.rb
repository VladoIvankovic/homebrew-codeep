class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.10.tgz"
  sha256 "9ae0885f383d719bd8cba36ce47badcd840e2039c9edd7b860e3f0128b3342ae"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.10"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
