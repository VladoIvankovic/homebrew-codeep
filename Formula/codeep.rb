class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.95.tgz"
  sha256 "741f7af26a6d0daca62d134ec7d1ee68ec0fe274e00a89a5d40392a544a6e0ef"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.95"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
