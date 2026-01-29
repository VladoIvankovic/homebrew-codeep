class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.36.tgz"
  sha256 "ee1d1e38d65102129474de09c523febbd74623f0e41fada2d2f64ede50ccdc75"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.36"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
