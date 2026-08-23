class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.21.0.tgz"
  sha256 "ad1069cd82dadad8435a737097fc01e2a8394190fdc75fed6047fd17c80e851a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.21.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
