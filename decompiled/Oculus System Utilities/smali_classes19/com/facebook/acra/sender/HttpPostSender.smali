.class public Lcom/facebook/acra/sender/HttpPostSender;
.super Ljava/lang/Object;
.source "HttpPostSender.java"

# interfaces
.implements Lcom/facebook/acra/sender/FlexibleReportSender;


# instance fields
.field private final mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

.field private mCrashReportEndpoint:Landroid/net/Uri;

.field private mProxy:Ljava/net/Proxy;

.field private mSkipSslCertChecks:Z

.field private mUseMultipartPost:Z

.field private mUseZstd:Z


# direct methods
.method public constructor <init>(Lcom/facebook/acra/config/AcraReportingConfig;)V
    .locals 1
    .param p1, "acraConfig"    # Lcom/facebook/acra/config/AcraReportingConfig;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/facebook/acra/sender/HttpPostSender;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    .line 92
    iget-object v0, p0, Lcom/facebook/acra/sender/HttpPostSender;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->crashReportUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/acra/sender/HttpPostSender;->mCrashReportEndpoint:Landroid/net/Uri;

    .line 93
    return-void
.end method

.method private sendInternal(Lcom/facebook/acra/CrashReportData;)V
    .locals 11
    .param p1, "report"    # Lcom/facebook/acra/CrashReportData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/facebook/acra/sender/HttpPostSender;->mCrashReportEndpoint:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "url":Ljava/net/URL;
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Connect to %s"

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    const/4 v9, 0x0

    .line 110
    .local v9, "proxy":Ljava/net/Proxy;
    iget-object v2, p0, Lcom/facebook/acra/sender/HttpPostSender;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v2}, Lcom/facebook/acra/config/AcraReportingConfig;->allowProxy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    iget-object v9, p0, Lcom/facebook/acra/sender/HttpPostSender;->mProxy:Ljava/net/Proxy;

    .line 115
    :cond_0
    iget-boolean v2, p0, Lcom/facebook/acra/sender/HttpPostSender;->mSkipSslCertChecks:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/acra/sender/HttpPostSender;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v2}, Lcom/facebook/acra/config/AcraReportingConfig;->allowUnsafeConnectionsForDebugging()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    new-instance v8, Lcom/facebook/acra/util/UnsafeConnectionProvider;

    iget-object v2, p0, Lcom/facebook/acra/sender/HttpPostSender;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v2}, Lcom/facebook/acra/config/AcraReportingConfig;->socketTimeout()I

    move-result v2

    invoke-direct {v8, v2, v9}, Lcom/facebook/acra/util/UnsafeConnectionProvider;-><init>(ILjava/net/Proxy;)V

    .line 121
    .local v8, "provider":Lcom/facebook/acra/util/HttpConnectionProvider;
    :goto_0
    invoke-static {}, Lcom/facebook/acra/ACRA;->getConfig()Lcom/facebook/acra/config/AcraReportingConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/acra/config/AcraReportingConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, "userAgent":Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v7, "extraHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 124
    .local v10, "userId":Ljava/lang/String;
    const-string v2, "UID"

    invoke-virtual {p1, v2}, Lcom/facebook/acra/CrashReportData;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    const-string v2, "UID"

    invoke-virtual {p1, v2}, Lcom/facebook/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "userId":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 127
    .restart local v10    # "userId":Ljava/lang/String;
    :cond_1
    if-eqz v10, :cond_2

    const-string v2, ""

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "0"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 128
    const-string v2, "Cookie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "c_user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_2
    iget-boolean v2, p0, Lcom/facebook/acra/sender/HttpPostSender;->mUseMultipartPost:Z

    if-eqz v2, :cond_4

    .line 131
    new-instance v0, Lcom/facebook/acra/util/HttpRequestMultipart;

    invoke-direct {v0, v8}, Lcom/facebook/acra/util/HttpRequestMultipart;-><init>(Lcom/facebook/acra/util/HttpConnectionProvider;)V

    .line 132
    .local v0, "req":Lcom/facebook/acra/util/HttpRequestMultipart;
    invoke-virtual {v0, v7}, Lcom/facebook/acra/util/HttpRequestMultipart;->setHeaders(Ljava/util/Map;)V

    .line 134
    invoke-virtual {p1}, Lcom/facebook/acra/CrashReportData;->getInputStreamFields()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/facebook/acra/util/ACRAResponse;

    invoke-direct {v4}, Lcom/facebook/acra/util/ACRAResponse;-><init>()V

    iget-boolean v6, p0, Lcom/facebook/acra/sender/HttpPostSender;->mUseZstd:Z

    move-object v2, p1

    .line 133
    invoke-virtual/range {v0 .. v6}, Lcom/facebook/acra/util/HttpRequestMultipart;->sendPost(Ljava/net/URL;Ljava/util/Map;Ljava/util/Map;Lcom/facebook/acra/util/ACRAResponse;Ljava/lang/String;Z)V

    .line 140
    .end local v0    # "req":Lcom/facebook/acra/util/HttpRequestMultipart;
    :goto_1
    return-void

    .line 118
    .end local v5    # "userAgent":Ljava/lang/String;
    .end local v7    # "extraHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "provider":Lcom/facebook/acra/util/HttpConnectionProvider;
    .end local v10    # "userId":Ljava/lang/String;
    :cond_3
    new-instance v8, Lcom/facebook/acra/util/SSLConnectionProvider;

    iget-object v2, p0, Lcom/facebook/acra/sender/HttpPostSender;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v2}, Lcom/facebook/acra/config/AcraReportingConfig;->socketTimeout()I

    move-result v2

    invoke-direct {v8, v2, v9}, Lcom/facebook/acra/util/SSLConnectionProvider;-><init>(ILjava/net/Proxy;)V

    .restart local v8    # "provider":Lcom/facebook/acra/util/HttpConnectionProvider;
    goto :goto_0

    .line 136
    .restart local v5    # "userAgent":Ljava/lang/String;
    .restart local v7    # "extraHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "userId":Ljava/lang/String;
    :cond_4
    new-instance v0, Lcom/facebook/acra/util/HttpRequest;

    invoke-direct {v0, v8}, Lcom/facebook/acra/util/HttpRequest;-><init>(Lcom/facebook/acra/util/HttpConnectionProvider;)V

    .line 137
    .local v0, "req":Lcom/facebook/acra/util/HttpRequest;
    invoke-virtual {v0, v7}, Lcom/facebook/acra/util/HttpRequest;->setHeaders(Ljava/util/Map;)V

    .line 138
    new-instance v2, Lcom/facebook/acra/util/ACRAResponse;

    invoke-direct {v2}, Lcom/facebook/acra/util/ACRAResponse;-><init>()V

    invoke-virtual {v0, v1, p1, v2, v5}, Lcom/facebook/acra/util/HttpRequest;->sendPost(Ljava/net/URL;Ljava/util/Map;Lcom/facebook/acra/util/ACRAResponse;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getUseMultipartPost()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/facebook/acra/sender/HttpPostSender;->mUseMultipartPost:Z

    return v0
.end method

.method public send(Lcom/facebook/acra/CrashReportData;)V
    .locals 3
    .param p1, "report"    # Lcom/facebook/acra/CrashReportData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/acra/sender/ReportSenderException;
        }
    .end annotation

    .prologue
    .line 98
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/acra/sender/HttpPostSender;->sendInternal(Lcom/facebook/acra/CrashReportData;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/facebook/acra/sender/ReportSenderException;

    const-string v2, "Error while sending report to Http Post Form."

    invoke-direct {v1, v2, v0}, Lcom/facebook/acra/sender/ReportSenderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setHost(Ljava/lang/String;)Z
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 144
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    :cond_0
    const/4 v0, 0x0

    .line 152
    :cond_1
    :goto_0
    return v0

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/facebook/acra/sender/HttpPostSender;->mCrashReportEndpoint:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/facebook/acra/sender/HttpPostSender;->mCrashReportEndpoint:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/acra/sender/HttpPostSender;->mCrashReportEndpoint:Landroid/net/Uri;

    goto :goto_0
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 162
    iput-object p1, p0, Lcom/facebook/acra/sender/HttpPostSender;->mProxy:Ljava/net/Proxy;

    .line 163
    return-void
.end method

.method public setSkipSslCertsChecks(Z)V
    .locals 0
    .param p1, "skipChecks"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/facebook/acra/sender/HttpPostSender;->mSkipSslCertChecks:Z

    .line 158
    return-void
.end method

.method public setUseMultipartPost(Z)V
    .locals 0
    .param p1, "multipart"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/facebook/acra/sender/HttpPostSender;->mUseMultipartPost:Z

    .line 171
    return-void
.end method

.method public setUseZstd(Z)V
    .locals 0
    .param p1, "useZstd"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/facebook/acra/sender/HttpPostSender;->mUseZstd:Z

    .line 175
    return-void
.end method
