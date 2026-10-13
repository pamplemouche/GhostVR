.class public Lcom/oculus/http/core/interceptor/ApiInterceptor;
.super Ljava/lang/Object;
.source "ApiInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private final mBuildModel:Ljava/lang/String;

.field private final mBuildNumber:I

.field private final mDeviceId:Ljava/lang/String;

.field private final mLocaleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserAgent:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjavax/inject/Provider;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/oculus/http/core/interceptor/ApiInterceptor;->mDeviceId:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/oculus/http/core/interceptor/ApiInterceptor;->mUserAgent:Ljava/lang/String;

    .line 47
    iput p3, p0, Lcom/oculus/http/core/interceptor/ApiInterceptor;->mBuildNumber:I

    .line 48
    iput-object p4, p0, Lcom/oculus/http/core/interceptor/ApiInterceptor;->mLocaleProvider:Ljavax/inject/Provider;

    .line 49
    invoke-static {}, Lcom/oculus/util/device/DeviceUtils;->getBuildModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/http/core/interceptor/ApiInterceptor;->mBuildModel:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljavax/inject/Provider;)Lcom/oculus/http/core/interceptor/ApiInterceptor;
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Locale;",
            ">;)",
            "Lcom/oculus/http/core/interceptor/ApiInterceptor;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v1, Lcom/oculus/http/core/interceptor/ApiInterceptor;

    .line 28
    invoke-static {p0}, Lcom/oculus/util/device/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_0
    invoke-direct {v1, v2, p2, v0, p3}, Lcom/oculus/http/core/interceptor/ApiInterceptor;-><init>(Ljava/lang/String;Ljava/lang/String;ILjavax/inject/Provider;)V

    return-object v1

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getAcceptLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oculus/http/core/interceptor/ApiInterceptor;->mLocaleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 87
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Accept-Language"

    .line 58
    invoke-direct {p0}, Lcom/oculus/http/core/interceptor/ApiInterceptor;->getAcceptLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "X-ANDROID-ID"

    iget-object v3, p0, Lcom/oculus/http/core/interceptor/ApiInterceptor;->mDeviceId:Ljava/lang/String;

    .line 59
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "X-Build-Model"

    iget-object v3, p0, Lcom/oculus/http/core/interceptor/ApiInterceptor;->mBuildModel:Ljava/lang/String;

    .line 60
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "X-Build-Number"

    iget v3, p0, Lcom/oculus/http/core/interceptor/ApiInterceptor;->mBuildNumber:I

    .line 61
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "X-Oculus-Feature"

    const-string v3, "1"

    .line 66
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "oculus-request-id"

    .line 67
    invoke-static {}, Lcom/oculus/http/core/uuid/ApiUUID;->gen()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 69
    iget-object v2, p0, Lcom/oculus/http/core/interceptor/ApiInterceptor;->mUserAgent:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 70
    const-string v2, "User-Agent"

    iget-object v3, p0, Lcom/oculus/http/core/interceptor/ApiInterceptor;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 75
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    const-string v3, "forced_locale"

    iget-object v0, p0, Lcom/oculus/http/core/interceptor/ApiInterceptor;->mLocaleProvider:Ljavax/inject/Provider;

    .line 77
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 79
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 80
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 81
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method
