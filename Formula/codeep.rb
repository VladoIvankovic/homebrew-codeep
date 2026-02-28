class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.86.tgz"
  sha256 "c0376504e579d78ebfe28a9864967de96d9b9c79ba4384f1b46ee5e510d3a00a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.86"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
