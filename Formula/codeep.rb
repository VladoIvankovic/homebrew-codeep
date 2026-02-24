class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.52.tgz"
  sha256 "c1b38e1fef5bef25701882a4130f9cf254fe94c17637fe0a77410a4379cf750e"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.52"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
