class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.0.tgz"
  sha256 "0b79a98c256a8bb62c4d13a8558b790d04354939a4441eba2e2465fedec17c8a"
  license "Apache-2.0"

  depends_on "node"

  def install
    # Install the package using npm
    system "npm", "install", "-g", "--prefix=#{prefix}", "codeep@#{version}"
    
    # Create a wrapper script that sets NODE_PATH
    (bin/"codeep").write <<~EOS
      #!/bin/bash
      export NODE_PATH="#{prefix}/lib/node_modules"
      exec "#{Formula["node"].opt_bin}/node" "#{prefix}/lib/node_modules/codeep/dist/index.js" "$@"
    EOS
    
    chmod 0755, bin/"codeep"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codeep --version 2>&1", 1)
  end
end
