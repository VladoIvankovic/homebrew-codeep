class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.156.tgz"
  sha256 "1005b75022759263ea2a371f732b6186a852f44a98b25d500a1bc8278080b1f3"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.156"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
