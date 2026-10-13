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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 106
    new-instance v1, Ljava/net/URL;

    iget-object v0, p0, Lcom/facebook/acra/sender/HttpPostSender;->mCrashReportEndpoint:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Connect to %s"

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/facebook/acra/sender/HttpPostSender;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->allowProxy()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    iget-object v0, p0, Lcom/facebook/acra/sender/HttpPostSender;->mProxy:Ljava/net/Proxy;

    .line 115
    :goto_0
    iget-boolean v3, p0, Lcom/facebook/acra/sender/HttpPostSender;->mSkipSslCertChecks:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/facebook/acra/sender/HttpPostSender;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v3}, Lcom/facebook/acra/config/AcraReportingConfig;->allowUnsafeConnectionsForDebugging()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    new-instance v3, Lcom/facebook/acra/util/UnsafeConnectionProvider;

    iget-object v4, p0, Lcom/facebook/acra/sender/HttpPostSender;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v4}, Lcom/facebook/acra/config/AcraReportingConfig;->socketTimeout()I

    move-result v4

    invoke-direct {v3, v4, v0}, Lcom/facebook/acra/util/UnsafeConnectionProvider;-><init>(ILjava/net/Proxy;)V

    .line 121
    :goto_1
    invoke-static {}, Lcom/facebook/acra/ACRA;->getConfig()Lcom/facebook/acra/config/AcraReportingConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    .line 122
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 124
    const-string v0, "UID"

    invoke-virtual {p1, v0}, Lcom/facebook/acra/CrashReportData;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    const-string v0, "UID"

    invoke-virtual {p1, v0}, Lcom/facebook/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    :goto_2
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    const-string v2, "Cookie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "c_user="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/acra/sender/HttpPostSender;->mUseMultipartPost:Z

    if-eqz v0, :cond_2

    .line 131
    new-instance v0, Lcom/facebook/acra/util/HttpRequestMultipart;

    invoke-direct {v0, v3}, Lcom/facebook/acra/util/HttpRequestMultipart;-><init>(Lcom/facebook/acra/util/HttpConnectionProvider;)V

    .line 132
    invoke-virtual {v0, v4}, Lcom/facebook/acra/util/HttpRequestMultipart;->setHeaders(Ljava/util/Map;)V

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
    :goto_3
    return-void

    .line 118
    :cond_1
    new-instance v3, Lcom/facebook/acra/util/SSLConnectionProvider;

    iget-object v4, p0, Lcom/facebook/acra/sender/HttpPostSender;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v4}, Lcom/facebook/acra/config/AcraReportingConfig;->socketTimeout()I

    move-result v4

    invoke-direct {v3, v4, v0}, Lcom/facebook/acra/util/SSLConnectionProvider;-><init>(ILjava/net/Proxy;)V

    goto :goto_1

    .line 136
    :cond_2
    new-instance v0, Lcom/facebook/acra/util/HttpRequest;

    invoke-direct {v0, v3}, Lcom/facebook/acra/util/HttpRequest;-><init>(Lcom/facebook/acra/util/HttpConnectionProvider;)V

    .line 137
    invoke-virtual {v0, v4}, Lcom/facebook/acra/util/HttpRequest;->setHeaders(Ljava/util/Map;)V

    .line 138
    new-instance v2, Lcom/facebook/acra/util/ACRAResponse;

    invoke-direct {v2}, Lcom/facebook/acra/util/ACRAResponse;-><init>()V

    invoke-virtual {v0, v1, p1, v2, v5}, Lcom/facebook/acra/util/HttpRequest;->sendPost(Ljava/net/URL;Ljava/util/Map;Lcom/facebook/acra/util/ACRAResponse;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-object v0, v2

    goto :goto_2

    :cond_4
    move-object v0, v2

    goto/16 :goto_0
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
    new-instance v1, Lcom/facebook/acra/sender/ReportSenderException;

    const-string v2, "Error while sending report to Http Post Form."

    invoke-direct {v1, v2, v0}, Lcom/facebook/acra/sender/ReportSenderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setHost(Ljava/lang/String;)Z
    .locals 2

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
    .param p1    # Ljava/net/Proxy;
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

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/facebook/acra/sender/HttpPostSender;->mSkipSslCertChecks:Z

    .line 158
    return-void
.end method

.method public setUseMultipartPost(Z)V
    .locals 0

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/facebook/acra/sender/HttpPostSender;->mUseMultipartPost:Z

    .line 171
    return-void
.end method

.method public setUseZstd(Z)V
    .locals 0

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/facebook/acra/sender/HttpPostSender;->mUseZstd:Z

    .line 175
    return-void
.end method
