class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.2.tgz"
  sha256 "0f4392dd7e6ebc7e06a9f5c9a24ed874355fd49d11459ea098484ddd56dc98a2"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.2"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
