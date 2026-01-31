class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.118.tgz"
  sha256 "1b8410c80ad965fa5b97bf3a5749e7e20de5b45c442c7e70458f504c54c35c52"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.118"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
