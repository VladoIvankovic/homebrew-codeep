class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.39.tgz"
  sha256 "abc249319ba81fb6568e227ab7fb74c351d92e4a9cd00838e11e41372d49b56f"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.39"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
