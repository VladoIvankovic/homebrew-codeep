class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.106.tgz"
  sha256 "f637f1eb09f85f67a367d83eed713a72488f0ccf849bed21bb7f1b7a330b3108"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.106"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
