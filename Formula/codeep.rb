class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.147.tgz"
  sha256 "c3e666453f69a1d9007fdff51ad4024b81d1eb02ec9c378eec2ff11ca60828df"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.147"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
