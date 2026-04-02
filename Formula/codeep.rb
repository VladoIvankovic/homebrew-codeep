class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.137.tgz"
  sha256 "1305df8b949f00f43b0605bd290b8e99fe01ec5b46e75cb31433d7a896704742"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.137"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
