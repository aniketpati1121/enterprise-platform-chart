{{- define "enterprise-platform-chart.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "enterprise-platform-chart.fullname" -}}
{{ printf "%s-%s" .Release.Name .Chart.Name }}
{{- end }}

{{- define "enterprise-platform-chart.labels" -}}
app.kubernetes.io/name: {{ include "enterprise-platform-chart.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}