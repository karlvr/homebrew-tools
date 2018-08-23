class SwaggerCodegen < Formula
  desc "Generation of client and server from Swagger definition"
  homepage "https://swagger.io/swagger-codegen/"
  url "https://github.com/karlvr/swagger-codegen/archive/cactuslab-4.tar.gz"
  sha256 "a0aec8a4c7c7dbedc91529d29ed8e6d44dcba85bbf9fcb40b6da9651dc58170a"
  head "https://github.com/karlvr/swagger-codegen.git"

  depends_on :java => "1.7+"
  depends_on "maven" => :build

  def install
    system "mvn", "clean", "package", "-DskipTests"
    libexec.install "modules/swagger-codegen-cli/target/swagger-codegen-cli.jar"
    bin.write_jar_script libexec/"swagger-codegen-cli.jar", "swagger-codegen"
  end

  test do
    (testpath/"minimal.yaml").write <<~EOS
      ---
      swagger: '2.0'
      info:
        version: 0.0.0
        title: Simple API
      paths:
        /:
          get:
            responses:
              200:
                description: OK
    EOS
    system "#{bin}/swagger-codegen", "generate", "-i", "minimal.yaml", "-l", "swagger"
  end
end
