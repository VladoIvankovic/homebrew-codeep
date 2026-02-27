class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.77.tgz"
  sha256 "61ec7c5d59b09ce976b845584bae6691d01a62c56af9c52e969f4b3f9c83c9ac"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.77"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
