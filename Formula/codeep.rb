class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.41.tgz"
  sha256 "1cbca7b8a15c8afd7be6374ffd696336666540025a6859bb916eac2da7b0ae75"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.41"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
