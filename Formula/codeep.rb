class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.0.1.tgz"
  sha256 "01e72b1da18d7f9a99f6e3a8f4fc389b416e4847b0c479e6f4858550ec62bf2d"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.0.1"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
