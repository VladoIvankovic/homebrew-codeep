class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.99.tgz"
  sha256 "cffa1f3ef0ec80c6ce2280f48aef85564e1e29b3f772f9d7cec7a63bb438f102"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.99"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
