{{/*
Expand the name of the chart.
*/}}
{{- define "example.name" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "example.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "example.labels" -}}
helm.sh/chart: {{ include "example.chart" . }}
{{ include "example.selectorLabels" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "example.selectorLabels" -}}
app.kubernetes.io/name: {{ include "example.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
