{{/*
Return the ArgoCD Application name, allowing override via values.yaml
*/}}
{{- define "argocd-template.applicationName" -}}
{{- if .Values.argocd.application.nameOverride -}}
{{- .Values.argocd.application.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-app" (include "argocd-template.fullname" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
