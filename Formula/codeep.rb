class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.20.0.tgz"
  sha256 "3b779a366c921eb45f4901ed584c2201898d06334d800e19e8e7dd21e7f66615"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.20.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
