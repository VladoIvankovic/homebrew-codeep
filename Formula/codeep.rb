class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.67.tgz"
  sha256 "8549cb64875d3654f8d22d1d91725ca5fcda6993909de0687409cb1310c7bdef"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.67"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
