class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.129.tgz"
  sha256 "068aa8d6a2e29ce6c0345509f9d17f7700c41784827b57147672ef3cc6e51652"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.129"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
