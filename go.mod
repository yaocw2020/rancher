module github.com/rancher/rancher

go 1.19

// on release remove this wrangler replace and use the latest tag
replace github.com/rancher/wrangler v1.1.1 => github.com/rancher/wrangler v1.1.1-0.20230705223603-201b4da5bdaf

replace (
	github.com/docker/distribution => github.com/docker/distribution v2.7.1+incompatible // oras dep requires a replace is set
	github.com/docker/docker => github.com/docker/docker v20.10.18+incompatible // oras dep requires a replace is set

	github.com/knative/pkg => github.com/rancher/pkg v0.0.0-20190514055449-b30ab9de040e
	github.com/matryer/moq => github.com/rancher/moq v0.0.0-20200712062324-13d1f37d2d77

	github.com/opencontainers/runc => github.com/opencontainers/runc v1.1.2
	github.com/rancher/machine => github.com/rancher/machine v0.15.0-rancher100 // aks-operator requires rancher99 but rancher100 should not break it.
	github.com/rancher/rancher/pkg/apis => ./pkg/apis
	github.com/rancher/rancher/pkg/client => ./pkg/client

	go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc => go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc v0.20.0
	go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp => go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.20.0
	go.opentelemetry.io/otel => go.opentelemetry.io/otel v0.20.0
	go.opentelemetry.io/otel/exporters/otlp => go.opentelemetry.io/otel/exporters/otlp v0.20.0
	go.opentelemetry.io/otel/sdk => go.opentelemetry.io/otel/sdk v0.20.0
	go.opentelemetry.io/otel/trace => go.opentelemetry.io/otel/trace v0.20.0
	go.opentelemetry.io/proto/otlp => go.opentelemetry.io/proto/otlp v0.7.0

	helm.sh/helm/v3 => github.com/rancher/helm/v3 v3.9.0-rancher1
	k8s.io/api => k8s.io/api v0.25.4
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.25.4
	k8s.io/apimachinery => k8s.io/apimachinery v0.25.4
	k8s.io/apiserver => k8s.io/apiserver v0.25.4
	k8s.io/cli-runtime => k8s.io/cli-runtime v0.25.4
	k8s.io/client-go => github.com/rancher/client-go v1.25.4-rancher1
	k8s.io/cloud-provider => k8s.io/cloud-provider v0.25.4
	k8s.io/cluster-bootstrap => k8s.io/cluster-bootstrap v0.25.4
	k8s.io/code-generator => k8s.io/code-generator v0.25.4
	k8s.io/component-base => k8s.io/component-base v0.25.4
	k8s.io/component-helpers => k8s.io/component-helpers v0.25.4
	k8s.io/controller-manager => k8s.io/controller-manager v0.25.4
	k8s.io/cri-api => k8s.io/cri-api v0.25.4
	k8s.io/csi-translation-lib => k8s.io/csi-translation-lib v0.25.4
	k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.25.4
	k8s.io/kube-controller-manager => k8s.io/kube-controller-manager v0.25.4
	k8s.io/kube-proxy => k8s.io/kube-proxy v0.25.4
	k8s.io/kube-scheduler => k8s.io/kube-scheduler v0.25.4
	k8s.io/kubectl => k8s.io/kubectl v0.25.4
	k8s.io/kubelet => k8s.io/kubelet v0.25.4
	k8s.io/kubernetes => k8s.io/kubernetes v1.25.4
	k8s.io/legacy-cloud-providers => k8s.io/legacy-cloud-providers v0.25.4
	k8s.io/metrics => k8s.io/metrics v0.25.4
	k8s.io/mount-utils => k8s.io/mount-utils v0.25.4
	k8s.io/pod-security-admission => k8s.io/pod-security-admission v0.25.4
	k8s.io/sample-apiserver => k8s.io/sample-apiserver v0.25.4

	sigs.k8s.io/aws-iam-authenticator => github.com/rancher/aws-iam-authenticator v0.5.9-0.20220713170329-78acb8c83863
	sigs.k8s.io/cluster-api => sigs.k8s.io/cluster-api v1.2.12
)

require (
	github.com/Azure/azure-sdk-for-go v68.0.0+incompatible
	github.com/Azure/go-autorest/autorest v0.11.29
	github.com/Azure/go-autorest/autorest/adal v0.9.23
	github.com/Azure/go-autorest/autorest/to v0.4.1-0.20210111195520-9fc88b15294e
	github.com/AzureAD/microsoft-authentication-library-for-go v0.5.1
	github.com/Masterminds/semver/v3 v3.2.0
	github.com/Masterminds/sprig/v3 v3.2.3
	github.com/aws/aws-sdk-go v1.44.266
	github.com/bep/debounce v1.2.0
	github.com/blang/semver v3.5.1+incompatible
	github.com/coreos/go-iptables v0.6.0
	github.com/coreos/go-oidc/v3 v3.5.0
	github.com/coreos/go-semver v0.3.0
	github.com/creasty/defaults v1.5.2
	github.com/crewjam/saml v0.4.13
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/docker/distribution v2.8.2+incompatible
	github.com/docker/docker v23.0.2+incompatible
	github.com/docker/go-connections v0.4.0
	github.com/ehazlett/simplelog v0.0.0-20200226020431-d374894e92a4
	github.com/evanphx/json-patch v4.12.0+incompatible
	github.com/ghodss/yaml v1.0.0
	github.com/go-ldap/ldap/v3 v3.4.1
	github.com/go-logr/logr v1.2.4
	github.com/golang-jwt/jwt v3.2.1+incompatible
	github.com/golang/mock v1.6.0
	github.com/golang/protobuf v1.5.3
	github.com/google/gnostic v0.5.7-v3refs
	github.com/google/go-querystring v1.1.0 // indirect
	github.com/gorilla/mux v1.8.0
	github.com/gorilla/websocket v1.4.2
	github.com/hashicorp/go-multierror v1.1.1
	github.com/hashicorp/golang-lru v0.5.4
	github.com/heptio/authenticator v0.0.0-20180409043135-d282f87a1972
	github.com/manicminer/hamilton v0.46.0
	github.com/mattn/go-colorable v0.1.13
	github.com/mcuadros/go-version v0.0.0-20180611085657-6d5863ca60fa
	github.com/minio/minio-go/v7 v7.0.10
	github.com/mitchellh/mapstructure v1.5.0
	github.com/moby/locker v1.0.1
	github.com/oracle/oci-go-sdk v18.0.0+incompatible
	github.com/pborman/uuid v1.2.0
	github.com/pkg/errors v0.9.1
	github.com/prometheus-operator/prometheus-operator/pkg/apis/monitoring v0.52.0
	github.com/prometheus/client_golang v1.14.0
	github.com/prometheus/client_model v0.3.0
	github.com/prometheus/common v0.42.0
	github.com/rancher/aks-operator v1.1.2
	github.com/rancher/apiserver v0.0.0-20230515173455-c3b182bdbf7d
	github.com/rancher/channelserver v0.5.1-0.20220405170618-28c9b37deff1
	github.com/rancher/dynamiclistener v0.3.5
	github.com/rancher/eks-operator v1.2.0
	github.com/rancher/fleet/pkg/apis v0.0.0-20230605094423-ddbb43505e80
	github.com/rancher/gke-operator v1.1.5
	github.com/rancher/kubernetes-provider-detector v0.1.5
	github.com/rancher/lasso v0.0.0-20230629200414-8a54b32e6792
	github.com/rancher/lasso/controller-runtime v0.0.0-20230502204209-3eb356f3e8cf
	github.com/rancher/machine v0.15.0-rancher99
	github.com/rancher/norman v0.0.0-20230426211126-d3552b018687
	github.com/rancher/rancher/pkg/apis v0.0.0
	github.com/rancher/rancher/pkg/client v0.0.0
	github.com/rancher/rdns-server v0.0.0-20180802070304-bf662911db6a
	github.com/rancher/remotedialer v0.2.6-0.20220624190122-ea57207bf2b8
	github.com/rancher/rke v1.4.8-rc1
	github.com/rancher/steve v0.0.0-20230609202141-bf2e9655f5dd
	github.com/rancher/system-upgrade-controller/pkg/apis v0.0.0-20210727200656-10b094e30007
	github.com/rancher/wrangler v1.1.1
	github.com/robfig/cron v1.1.0
	github.com/sirupsen/logrus v1.9.3
	github.com/stretchr/testify v1.8.4
	github.com/tomnomnom/linkheader v0.0.0-20180905144013-02ca5825eb80
	github.com/urfave/cli v1.22.12
	github.com/vishvananda/netlink v1.1.1-0.20210330154013-f5de75959ad5
	github.com/vmware/govmomi v0.30.4
	golang.org/x/crypto v0.10.0
	golang.org/x/mod v0.10.0
	golang.org/x/net v0.11.0
	golang.org/x/oauth2 v0.6.0
	golang.org/x/sync v0.2.0
	golang.org/x/text v0.10.0 // indirect
	golang.org/x/tools v0.9.3 // indirect
	google.golang.org/api v0.114.0
	google.golang.org/grpc v1.54.0
	gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c
	gopkg.in/natefinch/lumberjack.v2 v2.0.0
	gopkg.in/yaml.v2 v2.4.0
	helm.sh/helm/v3 v3.9.0
	k8s.io/api v0.26.1
	k8s.io/apiextensions-apiserver v0.25.4
	k8s.io/apimachinery v0.26.1
	k8s.io/apiserver v0.25.4
	k8s.io/cli-runtime v0.25.4
	k8s.io/client-go v12.0.0+incompatible
	k8s.io/gengo v0.0.0-20220902162205-c0856e24416d
	k8s.io/helm v2.16.7+incompatible
	k8s.io/kube-aggregator v0.25.4
	k8s.io/kubectl v0.25.4
	k8s.io/kubernetes v1.25.4
	k8s.io/utils v0.0.0-20230209194617-a36077c30491
	sigs.k8s.io/aws-iam-authenticator v0.5.9
	sigs.k8s.io/cluster-api v1.2.12
	sigs.k8s.io/controller-runtime v0.12.3
	sigs.k8s.io/yaml v1.3.0
)

require github.com/containers/image/v5 v5.25.0

require (
	cloud.google.com/go/compute/metadata v0.2.3 // indirect
	github.com/VividCortex/ewma v1.2.0 // indirect
	github.com/acarl005/stripansi v0.0.0-20180116102854-5a71ef0e047d // indirect
	github.com/containerd/stargz-snapshotter/estargz v0.14.3 // indirect
	github.com/containers/libtrust v0.0.0-20230121012942-c1716e8a8d01 // indirect
	github.com/containers/ocicrypt v1.1.7 // indirect
	github.com/containers/storage v1.46.0 // indirect
	github.com/cyberphone/json-canonicalization v0.0.0-20220623050100-57a0ce2678a7 // indirect
	github.com/go-jose/go-jose/v3 v3.0.0 // indirect
	github.com/go-openapi/analysis v0.21.4 // indirect
	github.com/go-openapi/errors v0.20.3 // indirect
	github.com/go-openapi/loads v0.21.2 // indirect
	github.com/go-openapi/runtime v0.25.0 // indirect
	github.com/go-openapi/spec v0.20.8 // indirect
	github.com/go-openapi/strfmt v0.21.7 // indirect
	github.com/go-openapi/validate v0.22.1 // indirect
	github.com/google/go-containerregistry v0.13.0 // indirect
	github.com/google/go-intervals v0.0.2 // indirect
	github.com/googleapis/enterprise-certificate-proxy v0.2.3 // indirect
	github.com/klauspost/pgzip v1.2.6-0.20220930104621-17e8dac29df8 // indirect
	github.com/kr/fs v0.1.0 // indirect
	github.com/letsencrypt/boulder v0.0.0-20230213213521-fdfea0d469b6 // indirect
	github.com/mattn/go-shellwords v1.0.12 // indirect
	github.com/miekg/pkcs11 v1.1.1 // indirect
	github.com/mistifyio/go-zfs/v3 v3.0.0 // indirect
	github.com/oklog/ulid v1.3.1 // indirect
	github.com/opencontainers/runtime-spec v1.1.0-rc.1 // indirect
	github.com/opencontainers/selinux v1.11.0 // indirect
	github.com/ostreedev/ostree-go v0.0.0-20210805093236-719684c64e4f // indirect
	github.com/proglottis/gpgme v0.1.3 // indirect
	github.com/sigstore/fulcio v1.2.0 // indirect
	github.com/sigstore/rekor v1.1.0 // indirect
	github.com/sigstore/sigstore v1.6.0 // indirect
	github.com/stefanberger/go-pkcs11uri v0.0.0-20201008174630-78d3cae3a980 // indirect
	github.com/sylabs/sif/v2 v2.11.1 // indirect
	github.com/syndtr/gocapability v0.0.0-20200815063812-42c35b437635 // indirect
	github.com/tchap/go-patricia/v2 v2.3.1 // indirect
	github.com/theupdateframework/go-tuf v0.5.2 // indirect
	github.com/titanous/rocacheck v0.0.0-20171023193734-afe73141d399 // indirect
	github.com/ulikunitz/xz v0.5.11 // indirect
	github.com/vbatts/tar-split v0.11.3 // indirect
	github.com/vbauerster/mpb/v8 v8.3.0 // indirect
	go.etcd.io/bbolt v1.3.7 // indirect
	go.mongodb.org/mongo-driver v1.11.3 // indirect
	go.mozilla.org/pkcs7 v0.0.0-20210826202110-33d05740a352 // indirect
	golang.org/x/exp v0.0.0-20230321023759-10a507213a29 // indirect
	gopkg.in/go-jose/go-jose.v2 v2.6.1 // indirect
	k8s.io/pod-security-admission v0.25.4 // indirect
)

require (
	cloud.google.com/go/compute v1.18.0 // indirect
	github.com/Azure/go-ansiterm v0.0.0-20210617225240-d185dfc1b5a1 // indirect
	github.com/Azure/go-autorest v14.2.0+incompatible // indirect
	github.com/Azure/go-autorest/autorest/azure/auth v0.5.12 // indirect
	github.com/Azure/go-autorest/autorest/azure/cli v0.4.6 // indirect
	github.com/Azure/go-autorest/autorest/date v0.3.0 // indirect
	github.com/Azure/go-autorest/autorest/validation v0.3.2-0.20210111195520-9fc88b15294e // indirect
	github.com/Azure/go-autorest/logger v0.2.1 // indirect
	github.com/Azure/go-autorest/tracing v0.6.0 // indirect
	github.com/Azure/go-ntlmssp v0.0.0-20200615164410-66371956d46c // indirect
	github.com/BurntSushi/toml v1.2.1 // indirect
	github.com/MakeNowJust/heredoc v1.0.0 // indirect
	github.com/Masterminds/goutils v1.1.1 // indirect
	github.com/Masterminds/squirrel v1.5.2 // indirect
	github.com/Microsoft/go-winio v0.6.0 // indirect
	github.com/Microsoft/hcsshim v0.9.8 // indirect
	github.com/adrg/xdg v0.3.1 // indirect
	github.com/apparentlymart/go-cidr v1.0.1 // indirect
	github.com/asaskevich/govalidator v0.0.0-20230301143203-a9d515a09cc2 // indirect
	github.com/beevik/etree v1.1.0 // indirect
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/blang/semver/v4 v4.0.0 // indirect
	github.com/cespare/xxhash/v2 v2.2.0 // indirect
	github.com/chai2010/gettext-go v1.0.2 // indirect
	github.com/containerd/cgroups v1.0.4 // indirect
	github.com/containerd/containerd v1.6.18 // indirect
	github.com/coredns/caddy v1.1.0 // indirect
	github.com/coredns/corefile-migration v1.0.20 // indirect
	github.com/coreos/go-systemd/v22 v22.3.2 // indirect
	github.com/cpuguy83/go-md2man/v2 v2.0.2 // indirect
	github.com/cyphar/filepath-securejoin v0.2.3 // indirect
	github.com/dimchansky/utfbom v1.1.1 // indirect
	github.com/docker/cli v20.10.20+incompatible // indirect
	github.com/docker/docker-credential-helpers v0.7.0 // indirect
	github.com/docker/go-metrics v0.0.1 // indirect
	github.com/docker/go-units v0.5.0 // indirect
	github.com/docker/libtrust v0.0.0-20160708172513-aabc10ec26b7 // indirect
	github.com/emicklei/go-restful/v3 v3.10.1 // indirect
	github.com/evanphx/json-patch/v5 v5.6.0 // indirect
	github.com/exponent-io/jsonpath v0.0.0-20151013193312-d6023ce2651d // indirect
	github.com/fatih/camelcase v1.0.0 // indirect
	github.com/fatih/color v1.13.0 // indirect
	github.com/felixge/httpsnoop v1.0.3 // indirect
	github.com/fsnotify/fsnotify v1.6.0 // indirect
	github.com/fvbommel/sortorder v1.0.1 // indirect
	github.com/go-asn1-ber/asn1-ber v1.5.3 // indirect
	github.com/go-errors/errors v1.0.1 // indirect
	github.com/go-gorp/gorp/v3 v3.0.2 // indirect
	github.com/go-ini/ini v1.37.0 // indirect
	github.com/go-openapi/jsonpointer v0.19.6 // indirect
	github.com/go-openapi/jsonreference v0.20.1 // indirect
	github.com/go-openapi/swag v0.22.3 // indirect
	github.com/gobuffalo/flect v0.2.5 // indirect
	github.com/gobwas/glob v0.2.3 // indirect
	github.com/gofrs/flock v0.8.1 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang-jwt/jwt/v4 v4.5.0 // indirect
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da // indirect
	github.com/google/btree v1.0.1 // indirect
	github.com/google/go-cmp v0.5.9 // indirect
	github.com/google/go-github/v29 v29.0.3 // indirect
	github.com/google/gofuzz v1.2.0 // indirect
	github.com/google/shlex v0.0.0-20191202100458-e7afc7fbc510 // indirect
	github.com/google/uuid v1.3.0 // indirect
	github.com/googleapis/gax-go/v2 v2.8.0 // indirect
	github.com/gorilla/handlers v1.5.1 // indirect
	github.com/gosuri/uitable v0.0.4 // indirect
	github.com/gregjones/httpcache v0.0.0-20190611155906-901d90724c79 // indirect
	github.com/grpc-ecosystem/grpc-gateway v1.16.0 // indirect
	github.com/hashicorp/errwrap v1.1.0 // indirect
	github.com/hashicorp/go-cleanhttp v0.5.2 // indirect
	github.com/hashicorp/go-retryablehttp v0.7.2 // indirect
	github.com/hashicorp/go-uuid v1.0.2 // indirect
	github.com/hashicorp/go-version v1.3.0 // indirect
	github.com/huandu/xstrings v1.3.3 // indirect
	github.com/imdario/mergo v0.3.15 // indirect
	github.com/inconshreveable/mousetrap v1.0.1 // indirect
	github.com/jmespath/go-jmespath v0.4.0 // indirect
	github.com/jmoiron/sqlx v1.3.4 // indirect
	github.com/jonboulle/clockwork v0.2.2 // indirect
	github.com/josharian/intern v1.0.0 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/klauspost/compress v1.16.3 // indirect
	github.com/klauspost/cpuid v1.3.1 // indirect
	github.com/kr/pretty v0.3.1 // indirect
	github.com/kr/text v0.2.0 // indirect
	github.com/kylelemons/godebug v1.1.0 // indirect
	github.com/lann/builder v0.0.0-20180802200727-47ae307949d0 // indirect
	github.com/lann/ps v0.0.0-20150810152359-62de8c46ede0 // indirect
	github.com/lib/pq v1.10.4 // indirect
	github.com/liggitt/tabwriter v0.0.0-20181228230101-89fcab3d43de // indirect
	github.com/mailru/easyjson v0.7.7 // indirect
	github.com/matryer/moq v0.0.0-20200607124540-4638a53893e6 // indirect
	github.com/mattermost/xml-roundtrip-validator v0.1.0 // indirect
	github.com/mattn/go-isatty v0.0.16 // indirect
	github.com/mattn/go-runewidth v0.0.14 // indirect
	github.com/matttproud/golang_protobuf_extensions v1.0.4 // indirect
	github.com/minio/md5-simd v1.1.0 // indirect
	github.com/minio/sha256-simd v0.1.1 // indirect
	github.com/mitchellh/copystructure v1.2.0 // indirect
	github.com/mitchellh/go-homedir v1.1.0 // indirect
	github.com/mitchellh/go-wordwrap v1.0.0 // indirect
	github.com/mitchellh/reflectwalk v1.0.2 // indirect
	github.com/moby/spdystream v0.2.0 // indirect
	github.com/moby/sys/mount v0.2.0 // indirect
	github.com/moby/sys/mountinfo v0.6.2 // indirect
	github.com/moby/term v0.0.0-20221120202655-abb19827d345 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/monochromegane/go-gitignore v0.0.0-20200626010858-205db1a8cc00 // indirect
	github.com/morikuni/aec v1.0.0 // indirect
	github.com/munnerz/goautoneg v0.0.0-20191010083416-a7dc8b61c822 // indirect
	github.com/mxk/go-flowrate v0.0.0-20140419014527-cca7078d478f // indirect
	github.com/onsi/gomega v1.27.8 // indirect
	github.com/opencontainers/go-digest v1.0.0 // indirect
	github.com/opencontainers/image-spec v1.1.0-rc2 // indirect
	github.com/opencontainers/runc v1.1.5 // indirect
	github.com/peterbourgon/diskv v2.0.1+incompatible // indirect
	github.com/pkg/sftp v1.13.5
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/prometheus/procfs v0.9.0 // indirect
	github.com/rivo/uniseg v0.4.4 // indirect
	github.com/rogpeppe/go-internal v1.10.0 // indirect
	github.com/rs/xid v1.2.1 // indirect
	github.com/rubenv/sql-migrate v1.1.1 // indirect
	github.com/russellhaering/goxmldsig v1.2.0 // indirect
	github.com/russross/blackfriday v1.6.0 // indirect
	github.com/russross/blackfriday/v2 v2.1.0 // indirect
	github.com/shopspring/decimal v1.2.0 // indirect
	github.com/smartystreets/goconvey v1.7.2 // indirect
	github.com/spf13/cast v1.5.0 // indirect
	github.com/spf13/cobra v1.6.1
	github.com/spf13/pflag v1.0.5 // indirect
	github.com/stretchr/objx v0.5.0 // indirect
	github.com/valyala/fastjson v1.6.3 // indirect
	github.com/vishvananda/netns v0.0.0-20210104183010-2eb08e3e575f // indirect
	github.com/xeipuuv/gojsonpointer v0.0.0-20190905194746-02993c407bfb // indirect
	github.com/xeipuuv/gojsonreference v0.0.0-20180127040603-bd5ef7bd5415 // indirect
	github.com/xeipuuv/gojsonschema v1.2.0 // indirect
	github.com/xlab/treeprint v1.1.0 // indirect
	github.com/yvasiyarov/go-metrics v0.0.0-20150112132944-c25f46c4b940 // indirect
	github.com/yvasiyarov/gorelic v0.0.7 // indirect
	github.com/yvasiyarov/newrelic_platform_go v0.0.0-20160601141957-9c099fbc30e9 // indirect
	go.etcd.io/etcd/api/v3 v3.5.4 // indirect
	go.etcd.io/etcd/client/pkg/v3 v3.5.4 // indirect
	go.etcd.io/etcd/client/v2 v2.305.4 // indirect
	go.etcd.io/etcd/client/v3 v3.5.4 // indirect
	go.opencensus.io v0.24.0 // indirect
	go.opentelemetry.io/contrib v0.20.0 // indirect
	go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.20.0 // indirect
	go.opentelemetry.io/otel v1.13.0 // indirect
	go.opentelemetry.io/otel/exporters/otlp v0.20.0 // indirect
	go.opentelemetry.io/otel/metric v0.20.0 // indirect
	go.opentelemetry.io/otel/sdk v1.13.0 // indirect
	go.opentelemetry.io/otel/sdk/export/metric v0.20.0 // indirect
	go.opentelemetry.io/otel/sdk/metric v0.20.0 // indirect
	go.opentelemetry.io/otel/trace v1.13.0 // indirect
	go.opentelemetry.io/proto/otlp v0.19.0 // indirect
	go.starlark.net v0.0.0-20200306205701-8dd3e2ee1dd5 // indirect
	go.uber.org/atomic v1.10.0 // indirect
	go.uber.org/multierr v1.9.0 // indirect
	go.uber.org/zap v1.24.0 // indirect
	golang.org/x/sys v0.9.0 // indirect
	golang.org/x/term v0.9.0 // indirect
	golang.org/x/time v0.3.0 // indirect
	gomodules.xyz/jsonpatch/v2 v2.2.0 // indirect
	google.golang.org/appengine v1.6.7 // indirect
	google.golang.org/genproto v0.0.0-20230306155012-7f2fa6fef1f4 // indirect
	google.golang.org/protobuf v1.30.0 // indirect
	gopkg.in/inf.v0 v0.9.1 // indirect
	gopkg.in/ini.v1 v1.67.0 // indirect
	gopkg.in/square/go-jose.v2 v2.6.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	k8s.io/cluster-bootstrap v0.24.0 // indirect
	k8s.io/code-generator v0.27.1 // indirect
	k8s.io/component-base v0.25.4 // indirect
	k8s.io/component-helpers v0.25.4 // indirect
	k8s.io/klog v1.0.0 // indirect
	k8s.io/klog/v2 v2.90.1 // indirect
	k8s.io/kube-openapi v0.0.0-20230308215209-15aac26d736a // indirect
	oras.land/oras-go v1.1.0 // indirect
	sigs.k8s.io/apiserver-network-proxy/konnectivity-client v0.0.33 // indirect
	sigs.k8s.io/cli-utils v0.27.0 // indirect
	sigs.k8s.io/json v0.0.0-20221116044647-bc3834ca7abd // indirect
	sigs.k8s.io/kustomize/api v0.12.1 // indirect
	sigs.k8s.io/kustomize/kyaml v0.13.9 // indirect
	sigs.k8s.io/structured-merge-diff/v4 v4.2.3 // indirect
)
