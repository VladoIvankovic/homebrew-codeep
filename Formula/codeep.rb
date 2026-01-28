class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.1.tgz"
  sha256 "6f12b15e93767b97024851fee19218f3467d668e8bf3f3c4409d1fdad30c8ea6"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.1"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
