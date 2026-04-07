class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.157.tgz"
  sha256 "43ca8adf3e3a654ccf1b746d40b8f30a1fbc83dbcb6c2809a25906adffc729db"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.157"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
