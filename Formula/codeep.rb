class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.89.tgz"
  sha256 "b9a493c8c52bd69e40f8292e704ee431f9123aae71ad9849adadc08c9feeb624"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.89"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
