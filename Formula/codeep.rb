class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.132.tgz"
  sha256 "c961d034edb15f6add46a4e0ed8df22c43ea64733c6e11d75826a44519671f23"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.132"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
