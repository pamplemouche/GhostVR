.class public Lcom/oculus/browser/acra/util/HttpUtils;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doPost(Ljava/util/Map;Ljava/net/URL;)V
    .locals 1

    const-string v0, "application/x-www-form-urlencoded"

    .line 1
    invoke-static {p0, p1, v0}, Lcom/oculus/browser/acra/util/HttpUtils;->doPost(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;)V

    return-void
.end method

.method public static doPost(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0}, Lcom/oculus/browser/acra/util/HttpUtils;->doPost(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;Ljava/net/Proxy;)V

    return-void
.end method

.method public static doPost(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;Ljava/net/Proxy;)V
    .locals 6

    const-string v0, "application/json"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0}, Lcom/oculus/browser/acra/util/HttpUtils;->encodeParametersJson(Ljava/util/Map;)Lcom/oculus/browser/acra/util/HttpRequest$PostEntity;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/oculus/browser/acra/util/HttpUtils;->encodeParametersFormUrlEncoded(Ljava/util/Map;)Lcom/oculus/browser/acra/util/HttpRequest$PostEntity;

    move-result-object p0

    :goto_0
    move-object v2, p0

    .line 6
    new-instance p0, Lcom/oculus/browser/acra/util/SSLConnectionProvider;

    invoke-direct {p0, p3}, Lcom/oculus/browser/acra/util/SSLConnectionProvider;-><init>(Ljava/net/Proxy;)V

    .line 7
    invoke-static {}, Lcom/oculus/browser/acra/ACRA;->getConfig()Lcom/oculus/browser/acra/reporter/ReportsCrashes;

    move-result-object p3

    invoke-interface {p3}, Lcom/oculus/browser/acra/reporter/ReportsCrashes;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    .line 8
    new-instance v0, Lcom/oculus/browser/acra/util/HttpRequest;

    invoke-direct {v0, p0}, Lcom/oculus/browser/acra/util/HttpRequest;-><init>(Lcom/oculus/browser/acra/util/HttpConnectionProvider;)V

    .line 9
    new-instance v3, Lcom/oculus/browser/acra/util/ACRAResponse;

    invoke-direct {v3}, Lcom/oculus/browser/acra/util/ACRAResponse;-><init>()V

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oculus/browser/acra/util/HttpRequest;->sendPost(Ljava/net/URL;Lcom/oculus/browser/acra/util/HttpRequest$PostEntity;Lcom/oculus/browser/acra/util/ACRAResponse;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static encodeParametersFormUrlEncoded(Ljava/util/Map;)Lcom/oculus/browser/acra/util/HttpRequest$PostEntity;
    .locals 1

    .line 1
    new-instance v0, Lcom/oculus/browser/acra/util/HttpUtils$1;

    invoke-direct {v0, p0}, Lcom/oculus/browser/acra/util/HttpUtils$1;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static encodeParametersJson(Ljava/util/Map;)Lcom/oculus/browser/acra/util/HttpRequest$PostEntity;
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 2
    new-instance p0, Lcom/oculus/browser/acra/util/HttpRequest$StringPostEntity;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/browser/acra/util/HttpRequest$StringPostEntity;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
