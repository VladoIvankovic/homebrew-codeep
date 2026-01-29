class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.16.tgz"
  sha256 "d9d585255d8036fb0de9f05d31da8e70193dfd292283c8af903ccc0ac6b91838"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.16"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
