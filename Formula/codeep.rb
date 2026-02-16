class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.13.tgz"
  sha256 "7c44e5b806843fd7ba43d36ee203ddc757db4a48861f560ab5ebb243bd7eae89"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.13"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
