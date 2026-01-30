class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.68.tgz"
  sha256 "79bf5430dabc557584cee0b4ce8fca7ea9b16e280fefdfedc4ad451a3af7383e"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.68"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
