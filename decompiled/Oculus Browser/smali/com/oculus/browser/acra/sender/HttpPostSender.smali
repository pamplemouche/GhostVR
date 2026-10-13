.class public Lcom/oculus/browser/acra/sender/HttpPostSender;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/oculus/browser/acra/sender/FlexibleReportSender;


# instance fields
.field public mFormUri:Landroid/net/Uri;

.field public mProxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/oculus/browser/acra/sender/HttpPostSender;->mProxy:Ljava/net/Proxy;

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/browser/acra/sender/HttpPostSender;->mFormUri:Landroid/net/Uri;

    return-void
.end method

.method private remap(Ljava/util/Map;)Ljava/util/Map;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    sget-object v1, Lcom/oculus/browser/acra/ACRA;->ALL_CRASH_REPORT_FIELDS:[Lcom/oculus/browser/acra/ReportField;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 3
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 4
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 5
    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public send(Lcom/oculus/browser/acra/CrashReportData;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oculus/browser/acra/sender/HttpPostSender;->remap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/oculus/browser/acra/sender/HttpPostSender;->mFormUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/oculus/browser/acra/ACRA;->getConfig()Lcom/oculus/browser/acra/reporter/ReportsCrashes;

    move-result-object v1

    invoke-interface {v1}, Lcom/oculus/browser/acra/reporter/ReportsCrashes;->formPostFormat()Ljava/lang/String;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lcom/oculus/browser/acra/sender/HttpPostSender;->mProxy:Ljava/net/Proxy;

    if-eqz v2, :cond_0

    .line 7
    sget-object v2, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/browser/acra/sender/HttpPostSender;->mProxy:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->toString()Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_0
    sget-object v2, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 9
    :goto_0
    iget-object v2, p0, Lcom/oculus/browser/acra/sender/HttpPostSender;->mProxy:Ljava/net/Proxy;

    invoke-static {p1, v0, v1, v2}, Lcom/oculus/browser/acra/util/HttpUtils;->doPost(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;Ljava/net/Proxy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 10
    sget-object v0, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "send exception: "

    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance v0, Lcom/oculus/browser/acra/sender/ReportSenderException;

    const-string v1, "Error while sending report to Http Post Form."

    invoke-direct {v0, v1, p1}, Lcom/oculus/browser/acra/sender/ReportSenderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setHost(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/oculus/browser/acra/sender/HttpPostSender;->mFormUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/oculus/browser/acra/sender/HttpPostSender;->mFormUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/browser/acra/sender/HttpPostSender;->mFormUri:Landroid/net/Uri;

    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/acra/sender/HttpPostSender;->mProxy:Ljava/net/Proxy;

    return-void
.end method
