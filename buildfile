repositories.remote << 'http://repo1.maven.org/maven2'

JUNIT = 'junit:junit:jar:4.11'
THIS_VERSION = '0.4.2.0-SNAPSHOT'

define 'webp-imageio', :version => THIS_VERSION do
  no_ipr
  iml.jdk_version = '1.7'

  test.with JUNIT
  test.using :fork => true,
             :properties => {
                 'java.library.path' => Buildr.settings.build['native_build_path']
             }

  package(:jar)
end