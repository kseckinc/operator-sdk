module github.com/operator-framework/operator-sdk

go 1.16

require (
	github.com/Microsoft/hcsshim v0.8.14 // indirect
	github.com/blang/semver/v4 v4.0.0
	github.com/containerd/continuity v0.0.0-20201208142359-180525291bb7 // indirect
	github.com/fatih/structtag v1.1.0
	github.com/go-logr/logr v1.2.3
	github.com/go-task/slim-sprig v0.0.0-20210107165309-348f09dbbbc0
	github.com/gobuffalo/envy v1.7.1 // indirect
	github.com/iancoleman/strcase v0.0.0-20191112232945-16388991a334
	github.com/kr/text v0.2.0
	github.com/markbates/inflect v1.0.4
	github.com/maxbrunsfeld/counterfeiter/v6 v6.2.2
	github.com/onsi/ginkgo v1.16.4
	github.com/onsi/gomega v1.23.0
	github.com/operator-framework/api v0.10.8-0.20211210181140-6897e9ad3883
	github.com/operator-framework/java-operator-plugins v0.1.0
	github.com/operator-framework/operator-lib v0.6.0
	github.com/operator-framework/operator-registry v1.17.4
	github.com/prometheus/client_golang v1.14.0
	github.com/prometheus/client_model v0.3.0
	github.com/sergi/go-diff v1.1.0
	github.com/sirupsen/logrus v1.9.0
	github.com/spf13/afero v1.6.0
	github.com/spf13/cobra v1.6.1
	github.com/spf13/pflag v1.0.5
	github.com/spf13/viper v1.8.1
	github.com/stretchr/testify v1.8.1
	github.com/thoas/go-funk v0.8.0
	golang.org/x/mod v0.6.0
	golang.org/x/tools v0.2.0
	gomodules.xyz/jsonpatch/v3 v3.0.1
	helm.sh/helm/v3 v3.11.1
	k8s.io/api v0.26.0
	k8s.io/apiextensions-apiserver v0.26.0
	k8s.io/apimachinery v0.26.0
	k8s.io/cli-runtime v0.26.0
	k8s.io/client-go v0.26.0
	k8s.io/kubectl v0.26.0
	sigs.k8s.io/controller-runtime v0.10.0
	sigs.k8s.io/controller-tools v0.7.0
	sigs.k8s.io/kubebuilder/v3 v3.2.0
	sigs.k8s.io/yaml v1.3.0
)

replace (
	github.com/Azure/go-autorest => github.com/Azure/go-autorest v14.2.0+incompatible // Required by OLM
	// Using containerd 1.4.0+ resolves an issue with invalid error logging
	// from an init function in containerd. This replace can be removed when
	// one of our direct dependencies begins using containerd v1.4.0+
	github.com/containerd/containerd => github.com/containerd/containerd v1.4.3
	// latest tag resolves to a very old version. this is only used for spinning up local test registries
	github.com/docker/distribution => github.com/docker/distribution v0.0.0-20191216044856-a8371794149d
	github.com/mattn/go-sqlite3 => github.com/mattn/go-sqlite3 v1.10.0
	golang.org/x/text => golang.org/x/text v0.3.3 // Required to fix CVE-2020-14040

)

exclude github.com/spf13/viper v1.3.2 // Required to fix CVE-2018-1098
