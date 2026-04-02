class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.142.tgz"
  sha256 "bd51549c8a2f17e4288249ae97c566967952b68daf49a22d9d838a6df4757601"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.142"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
