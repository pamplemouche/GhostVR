.class public Lcom/facebook/acra/util/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doPost(Ljava/util/Map;Ljava/net/URL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/net/URL;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "application/x-www-form-urlencoded"

    .line 51
    invoke-static {p0, p1, v0}, Lcom/facebook/acra/util/HttpUtils;->doPost(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;)V

    return-void
.end method

.method public static doPost(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 63
    invoke-static {p0, p1, p2, v0}, Lcom/facebook/acra/util/HttpUtils;->doPost(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;Ljava/net/Proxy;)V

    return-void
.end method

.method public static doPost(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;Ljava/net/Proxy;)V
    .locals 6
    .param p3    # Ljava/net/Proxy;
        .annotation build Lcom/facebook/acra/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/net/Proxy;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "application/json"

    if-ne p2, v0, :cond_0

    .line 84
    invoke-static {p0}, Lcom/facebook/acra/util/HttpUtils;->encodeParametersJson(Ljava/util/Map;)Lcom/facebook/acra/util/HttpRequest$PostEntity;

    move-result-object p0

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {p0}, Lcom/facebook/acra/util/HttpUtils;->encodeParametersFormUrlEncoded(Ljava/util/Map;)Lcom/facebook/acra/util/HttpRequest$PostEntity;

    move-result-object p0

    :goto_0
    move-object v2, p0

    .line 90
    invoke-static {}, Lcom/facebook/acra/ACRA;->getConfig()Lcom/facebook/acra/reporter/ReportsCrashes;

    move-result-object p0

    invoke-interface {p0}, Lcom/facebook/acra/reporter/ReportsCrashes;->checkSSLCertsOnCrashReport()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 91
    new-instance p0, Lcom/facebook/acra/util/SSLConnectionProvider;

    invoke-direct {p0, p3}, Lcom/facebook/acra/util/SSLConnectionProvider;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    .line 93
    :cond_1
    new-instance p0, Lcom/facebook/acra/util/UnsafeConnectionProvider;

    invoke-direct {p0, p3}, Lcom/facebook/acra/util/UnsafeConnectionProvider;-><init>(Ljava/net/Proxy;)V

    .line 96
    :goto_1
    invoke-static {}, Lcom/facebook/acra/ACRA;->getConfig()Lcom/facebook/acra/reporter/ReportsCrashes;

    move-result-object p3

    invoke-interface {p3}, Lcom/facebook/acra/reporter/ReportsCrashes;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    .line 97
    new-instance v0, Lcom/facebook/acra/util/HttpRequest;

    invoke-direct {v0, p0}, Lcom/facebook/acra/util/HttpRequest;-><init>(Lcom/facebook/acra/util/HttpConnectionProvider;)V

    .line 98
    new-instance v3, Lcom/facebook/acra/util/ACRAResponse;

    invoke-direct {v3}, Lcom/facebook/acra/util/ACRAResponse;-><init>()V

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/acra/util/HttpRequest;->sendPost(Ljava/net/URL;Lcom/facebook/acra/util/HttpRequest$PostEntity;Lcom/facebook/acra/util/ACRAResponse;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static encodeParametersFormUrlEncoded(Ljava/util/Map;)Lcom/facebook/acra/util/HttpRequest$PostEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Lcom/facebook/acra/util/HttpRequest$PostEntity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/facebook/acra/util/HttpUtils$1;

    invoke-direct {v0, p0}, Lcom/facebook/acra/util/HttpUtils$1;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static encodeParametersJson(Ljava/util/Map;)Lcom/facebook/acra/util/HttpRequest$PostEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Lcom/facebook/acra/util/HttpRequest$PostEntity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 130
    new-instance p0, Lcom/facebook/acra/util/HttpRequest$StringPostEntity;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/acra/util/HttpRequest$StringPostEntity;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
