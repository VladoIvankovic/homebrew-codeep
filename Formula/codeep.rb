class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.46.tgz"
  sha256 "2ebaf635748778d6ec0f95ec9eba34816b4b2376428094b3fe3739b7f4142528"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.46"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
