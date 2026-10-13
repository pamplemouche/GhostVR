.class public Lcom/oculus/browser/acra/util/SSLConnectionProvider;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/oculus/browser/acra/util/HttpConnectionProvider;


# instance fields
.field public mProxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>(Ljava/net/Proxy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oculus/browser/acra/util/SSLConnectionProvider;->mProxy:Ljava/net/Proxy;

    return-void
.end method


# virtual methods
.method public getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/util/SSLConnectionProvider;->mProxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    :goto_0
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 4
    invoke-virtual {p0, p1}, Lcom/oculus/browser/acra/util/SSLConnectionProvider;->initializeConnectionParameters(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public initializeConnectionParameters(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 1
    invoke-static {}, Lcom/oculus/browser/acra/ACRA;->getConfig()Lcom/oculus/browser/acra/reporter/ReportsCrashes;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/browser/acra/reporter/ReportsCrashes;->socketTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 2
    invoke-static {}, Lcom/oculus/browser/acra/ACRA;->getConfig()Lcom/oculus/browser/acra/reporter/ReportsCrashes;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/browser/acra/reporter/ReportsCrashes;->socketTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-object p1
.end method
