class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.18.tgz"
  sha256 "5b72ff56d11434ff4a92e78c988779b58e25e4ab10adedb3d0f9f8999f3403f4"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.18"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
