class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.4.tgz"
  sha256 "f1fb19e818d9a1c57e15b4a1e1e4d9aa3cb089490f66ff632002a0e5e12562e3"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.4"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
