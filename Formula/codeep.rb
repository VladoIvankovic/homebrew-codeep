class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.67.tgz"
  sha256 "584dd816f0438db30fa1ba9e33a01e68ccc8e54ff9b66695fc865b15b926940a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.67"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
