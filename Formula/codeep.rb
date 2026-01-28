class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.2.tgz"
  sha256 "35c6e9b4cfe23c70ae2688531f3099e600bc2d33d8f584ba53158ee0c6a149c7"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.2"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
