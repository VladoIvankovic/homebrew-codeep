class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.115.tgz"
  sha256 "67c65324961e736ef463ec24aa6f90c540d5a2e80d02b19adde8630b327aa28c"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.115"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
