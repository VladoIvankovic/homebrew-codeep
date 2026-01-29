class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.40.tgz"
  sha256 "0f12ece84fbf4b9445bc4d1c99827ec23770a51b303200831895e02d2de950fb"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.40"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
