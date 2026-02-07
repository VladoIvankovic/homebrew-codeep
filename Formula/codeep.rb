class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.29.tgz"
  sha256 "23788fd2e3ed44b70c9f22dbf0b27157e67baa44b861e557bff11355d4436e4a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.29"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
