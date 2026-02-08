class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.30.tgz"
  sha256 "2bd904dcf3d672f3f28c6a8ec02fb59207b6f00067dddef9b3018d01db425530"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.30"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
