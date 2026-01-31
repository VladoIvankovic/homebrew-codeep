class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.106.tgz"
  sha256 "c2a4e083a4aa5ab7d3f89623d63fbfe4f8bbae572130eafdf36f73172ecb751a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.106"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
