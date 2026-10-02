class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.9.0.tgz"
  sha256 "55d1d68818a71ef5dcd40930d55d9d2fcdb90dd30a6801416ecfac9e488991bb"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.9.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
