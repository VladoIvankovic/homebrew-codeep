class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.57.tgz"
  sha256 "afb7799a594d8442f7f6b1c938f8d08c314305dbf92b0f882d295108cb49ec65"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.57"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
