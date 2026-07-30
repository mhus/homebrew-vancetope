class Vance < Formula
  desc "Vance Foot — CLI client for the Vance AI workbench"
  homepage "https://github.com/mhus/vance"
  # url + sha256 are rewritten on every `wb release publish` — do not hand-edit.
  url "https://github.com/mhus/vance/releases/download/v0.1.0/vance-foot-0.1.0.jar", using: :nounzip
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license :cannot_represent # Vance Non-Commercial, Non-Production Copyleft v1.0
  depends_on "openjdk@25"

  def install
    libexec.install "vance-foot-0.1.0.jar" => "vance-foot.jar"
    (bin/"vance").write <<~SH
      #!/bin/bash
      exec "#{Formula["openjdk@25"].opt_bin}/java" --enable-native-access=ALL-UNNAMED -jar "#{libexec}/vance-foot.jar" "$@"
    SH
  end

  test do
    assert_predicate bin/"vance", :executable?
  end
end
