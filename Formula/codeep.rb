class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.22.tgz"
  sha256 "1a033de0600d11b7fb4a22ce77cd289ca1254e04dfe4962b6cbfde395e951d4a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.22"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
