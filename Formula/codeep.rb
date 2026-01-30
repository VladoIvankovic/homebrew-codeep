class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.76.tgz"
  sha256 "e7a7000a9d6afdcda96943be0582dab9b2b1f7a14298e1a423319735e3e9d6b8"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.76"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
