class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.107.tgz"
  sha256 "bb7878f2843917e467c5a4388a9a5815cb98808c0f8ddd49d594ab5cfd64ca4c"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.107"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
