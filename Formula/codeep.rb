class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.146.tgz"
  sha256 "d7f9e35004929c3b324bd66d7ca538b7079efe4f558be0f53638b8b9184eb4de"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.146"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
