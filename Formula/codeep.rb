class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.87.tgz"
  sha256 "c76815b3dd7dd7d77f5e87272a0089040e47cc55d1945d3d0c82811ffba13a5e"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.87"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
