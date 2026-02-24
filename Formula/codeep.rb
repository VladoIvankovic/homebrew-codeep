class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.46.tgz"
  sha256 "d12b36bf9dffb81ca32f21999c0d9870c2a61b3d4e72f352df1083849bd180f2"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.46"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
