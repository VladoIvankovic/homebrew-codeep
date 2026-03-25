class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.104.tgz"
  sha256 "14fd6210517048355ea9285c6b049e7f708ebbf1fac78064a67e2d2ae3c5860f"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.104"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
