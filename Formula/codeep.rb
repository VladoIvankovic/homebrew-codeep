class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.114.tgz"
  sha256 "426a5214f6cbbfa7491280d18b0e7a9ce8c9fe9bdc47f153962f67fd30ccc60b"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.114"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
