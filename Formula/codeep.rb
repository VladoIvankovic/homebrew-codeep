class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.45.tgz"
  sha256 "27eeebf701f34045882a4569a7ae909b008b18ac67ccd2639133b3d3c8d9d297"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.45"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
