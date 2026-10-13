.class public Lcom/oculus/analytics/SimpleUploader;
.super Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;
.source "SimpleUploader.java"


# instance fields
.field private final mClient:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance p1, Lokhttp3/OkHttpClient;

    invoke-direct {p1}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object p1, p0, Lcom/oculus/analytics/SimpleUploader;->mClient:Lokhttp3/OkHttpClient;

    return-void
.end method


# virtual methods
.method protected getAccessToken()Ljava/lang/String;
    .locals 2
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 33
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not Implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/oculus/analytics/SimpleUploader;->mClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method protected getUserAgent()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
