class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.19.tgz"
  sha256 "5cc424621233fe36b5b8b682ad46549169bb84faa83f41cb816fe4cfb5040917"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.19"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
