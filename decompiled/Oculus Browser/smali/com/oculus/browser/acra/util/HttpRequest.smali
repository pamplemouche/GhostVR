.class public Lcom/oculus/browser/acra/util/HttpRequest;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final POST_CONTENT_TYPE_FORM_URLENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final POST_CONTENT_TYPE_JSON:Ljava/lang/String; = "application/json"

.field public static final TAG:Ljava/lang/String; = "HttpRequest"


# instance fields
.field public mConnectionProvider:Lcom/oculus/browser/acra/util/HttpConnectionProvider;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/acra/util/HttpConnectionProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oculus/browser/acra/util/HttpRequest;->mConnectionProvider:Lcom/oculus/browser/acra/util/HttpConnectionProvider;

    return-void
.end method


# virtual methods
.method public sendPost(Ljava/net/URL;Lcom/oculus/browser/acra/util/HttpRequest$PostEntity;Lcom/oculus/browser/acra/util/ACRAResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/util/HttpRequest;->mConnectionProvider:Lcom/oculus/browser/acra/util/HttpConnectionProvider;

    invoke-interface {v0, p1}, Lcom/oculus/browser/acra/util/HttpConnectionProvider;->getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    const-string v0, "POST"

    .line 2
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "User-Agent"

    .line 3
    invoke-virtual {p1, v0, p5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "Content-Type"

    .line 4
    invoke-virtual {p1, p5, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "Content-Encoding"

    const-string p5, "gzip"

    .line 5
    invoke-virtual {p1, p4, p5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p4, 0x1

    .line 6
    invoke-virtual {p1, p4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;

    .line 8
    :try_start_0
    new-instance p4, Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p5

    invoke-direct {p4, p5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 9
    invoke-interface {p2, p4}, Lcom/oculus/browser/acra/util/HttpRequest$PostEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 10
    invoke-virtual {p4}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 11
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    .line 12
    invoke-virtual {p3, p2}, Lcom/oculus/browser/acra/util/ACRAResponse;->setStatusCode(I)V

    .line 13
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p2
.end method
