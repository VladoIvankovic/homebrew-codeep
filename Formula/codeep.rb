class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.17.tgz"
  sha256 "a0062c140a2b25b8b4720170f021044502e50c396229952839fa0d3d653757ee"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.17"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
