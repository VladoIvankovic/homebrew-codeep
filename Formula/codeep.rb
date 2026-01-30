class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.94.tgz"
  sha256 "634dcb55b353976e25311aed9ab3c47f320d1588d3d2af6054c8756bbc4b9654"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.94"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
