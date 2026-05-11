# Minimal Observation Profile IG

FHIR R4 Observation リソースの派生 Profile を 1 個だけ含む、最小サンプル IG です。

## 構成

```text
minimal-observation-ig/
├── ig.ini
├── sushi-config.yaml
├── README.md
└── input/
    ├── fsh/
    │   ├── Aliases.fsh
    │   ├── MinimalObservationProfile.fsh
    │   ├── MinimalObservationExample.fsh
    │   └── PatientExample.fsh
    └── pagecontent/
        └── index.md
```

## ビルド手順

事前に SUSHI と FHIR IG Publisher を用意してください。

```bash
cd minimal-observation-ig
sushi .
java -jar publisher.jar -ig .
```

Publisher の jar ファイル名が `publisher.jar` でない場合は、実際のファイル名に置き換えてください。

## Profile

- Canonical: `http://example.org/fhir/minimal-observation/StructureDefinition/minimal-observation`
- Parent: `Observation`
- FHIR version: `4.0.1`

## 注意

JP-Core などの追加依存は入れていません。JP-Core 由来の Profile を親にしたい場合は、`sushi-config.yaml` の `dependencies` に追加し、FSH の `Parent:` を変更してください。
