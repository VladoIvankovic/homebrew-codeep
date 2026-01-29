class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.15.tgz"
  sha256 "636ef74cf0d35ba0fdf0e155f6b2a421be24c9ec95eeb5065f3d4868066f6205"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.15"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
