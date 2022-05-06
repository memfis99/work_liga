;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	les-iti-ntp-1.les.at-consulting.ru. root.les-iti-ntp-1.les.at-consulting.ru. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
	IN	NS	les-iti-ntp-1.les.at-consulting.ru.
@	IN	A	127.0.0.1
@	IN	AAAA	::1

les-iti-ntp-1	IN	A	10.125.4.208 
ppod-bal-01	IN A	10.125.4.101
ppod-db-01	IN A	10.125.4.102
ppod-in-gate-app-01	IN A	10.125.4.103
ppod-doc-journal-app-01	IN A	10.125.4.104
ppod-notifier-app-01	IN A	10.125.4.105
ppod-flc-app-01	IN A	10.125.4.106
ppod-scheduler-app-01	IN A	10.125.4.107
ppod-pay-rest-app-01	IN A	10.125.4.108
ppod-pay-gmp-gate-app-01	IN A	10.125.4.109
ppod-pay-calc-app-01	IN A	10.125.4.110
fgislk-fs-bal-01	IN A	10.125.4.111
fgislk-fs-db-01	IN A	10.125.4.112
fgislk-fs-01	IN A	10.125.4.113
fgislk-fs-ceph-01	IN A	10.125.4.114
fgislk-fs-ceph-02	IN A	10.125.4.115
fgislk-fs-ceph-03	IN A	10.125.4.116
geo-db-01	IN A	10.125.4.117
geo-db-02	IN A	10.125.4.118
geo-k8s-01	IN A	10.125.4.119
geo-k8s-02	IN A	10.125.4.120
geo-k8s-03	IN A	10.125.4.121
geo-s3-01	IN A	10.125.4.122
geo-kafka-01	IN A	10.125.4.123
geo-kafka-02	IN A	10.125.4.124
geo-kafka-03	IN A	10.125.4.125
bal-01-pud	IN A	10.125.4.126
bal-02-pud	IN A	10.125.4.127
db-01-pud	IN A	10.125.4.128
db-02-pud	IN A	10.125.4.129
app-01-pud	IN A	10.125.4.130
app-02-pud	IN A	10.125.4.131
les-bi-gpm-1	IN A	10.125.4.132
les-bi-gps-1	IN A	10.125.4.133
les-bi-gps-2	IN A	10.125.4.134
les-bi-gps-3	IN A	10.125.4.135
les-bi-k8s-w-1	IN A	10.125.4.136
les-bi-k8s-w-2	IN A	10.125.4.137
les-bi-k8s-w-3	IN A	10.125.4.138
les-bi-k8s-w-4	IN A	10.125.4.139
les-bi-k8s-w-5	IN A	10.125.4.140
les-bi-k8s-e-1	IN A	10.125.4.141
les-bi-k8s-m-1	IN A	10.125.4.142
les-bi-pg-1	IN A	10.125.4.143
les-bi-ci-1	IN A	10.125.4.144
les-bi-bkp	IN A	10.125.4.145
app-front-1	IN A	10.125.4.146
app-front-2	IN A	10.125.4.147
app-front-3	IN A	10.125.4.148
app-back-1	IN A	10.125.4.149
app-back-2	IN A	10.125.4.150
app-back-3	IN A	10.125.4.151
mon-logs	IN A	10.125.4.152
db	IN A	10.125.4.153
bal-01	IN A	10.125.4.154
db-01	IN A	10.125.4.155
k8s-master-01	IN A	10.125.4.156
k8s-worker-01	IN A	10.125.4.157
k8s-worker-02	IN A	10.125.4.158
k8s-worker-03	IN A	10.125.4.159
k8s-worker-04	IN A	10.125.4.160
k8s-worker-05	IN A	10.125.4.161
nfs-01	IN A	10.125.4.162
brokers-01	IN A	10.125.4.163
elk-01	IN A	10.125.4.164
bal-01	IN A	10.125.4.165
db-01	IN A	10.125.4.166
app-01	IN A	10.125.4.167
app-01-pul	IN A	10.125.4.168
app-02-pul	IN A	10.125.4.169
app-03-pul	IN A	10.125.4.170
bal-01-pnsi	IN A	10.125.4.171
es-01-pnsi	IN A	10.125.4.172
es-02-pnsi	IN A	10.125.4.173
db-01-pnsi	IN A	10.125.4.174
app-01-pnsi	IN A	10.125.4.175
adm-01-pnsi	IN A	10.125.4.176
db-02-pib	IN A	10.125.4.177
gismu2-gmu-k8s-02-pib	IN A	10.125.4.178
ad-1-pib	IN A	10.125.4.179
ad-2-pib	IN A	10.125.4.180
les-k8s-m-1	IN A	10.125.4.181
les-k8s-m-2	IN A	10.125.4.182
les-k8s-m-3	IN A	10.125.4.183
les-k8s-e-1	IN A	10.125.4.184
les-k8s-e-2	IN A	10.125.4.185
les-k8s-e-3	IN A	10.125.4.186
les-k8s-w-1	IN A	10.125.4.187
les-k8s-w-2	IN A	10.125.4.188
les-k8s-w-3	IN A	10.125.4.189
les-k8s-w-4	IN A	10.125.4.190
les-k8s-w-5	IN A	10.125.4.191
les-k8s-w-6	IN A	10.125.4.192
les-k8s-w-7	IN A	10.125.4.193
les-k8s-w-8	IN A	10.125.4.194
les-k8s-w-9	IN A	10.125.4.195
les-k8s-w-10	IN A	10.125.4.196
les-k8s-w-11	IN A	10.125.4.197
les-k8s-w-12	IN A	10.125.4.198
les-k8s-w-13	IN A	10.125.4.199
les-k8s-w-14	IN A	10.125.4.200
les-k8s-w-15	IN A	10.125.4.201
les-k8s-w-16	IN A	10.125.4.202
les-k8s-w-17	IN A	10.125.4.203
les-iti-repo-1	IN A	10.125.4.204
les-iti-graylog-1	IN A	10.125.4.205
gitlab	IN A	10.125.4.206
les-iti-zbx-1	IN A	10.125.4.207
les-iti-ntp-1	IN A	10.125.4.208
les-iti-bareos-1	IN A	10.125.4.209
les-iti-bareos-2	IN A	10.125.4.210

