class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.51.tgz"
  sha256 "82bd91d9a10a7ad2cf89b61882a5cf896410dafac3f6c98a15505a1bb75cdb83"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.51"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
