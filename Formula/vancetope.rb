class Vancetope < Formula
  desc "Vancetope — CLI client for the Vancetope AI workbench"
  homepage "https://github.com/mhus/vance"
  # url + sha256 are rewritten on every `wb release publish` — do not hand-edit.
  url "https://github.com/mhus/vance/releases/download/v0.2.0/vancetope-0.2.0.jar", using: :nounzip
  sha256 "0cdb53b71833bb2411fe676d7851f2192a552a47242dc0866e6d1514ed8cd814"
  license "BUSL-1.1" # Business Source License 1.1 → AGPLv3 on 2029-06-23
  depends_on "openjdk@25"

  def install
    libexec.install "vancetope-0.2.0.jar" => "vancetope.jar"
    (bin/"vancetope").write <<~SH
      #!/bin/bash
      exec "#{Formula["openjdk@25"].opt_bin}/java" --enable-native-access=ALL-UNNAMED -jar "#{libexec}/vancetope.jar" "$@"
    SH
  end

  test do
    assert_predicate bin/"vancetope", :executable?
  end
end
