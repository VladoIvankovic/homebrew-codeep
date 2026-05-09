class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.41.tgz"
  sha256 "87c832a6a07b009145b44469e0b6526054d1998081e6e9f652fa5add3c5eb42d"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.41"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
