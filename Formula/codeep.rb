class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.92.tgz"
  sha256 "32c17d08854ca81c4606777d8507605954e3c36cee7d89c982fb51263b67e3f3"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.92"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
