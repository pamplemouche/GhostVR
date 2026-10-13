.class public abstract Lcom/oculus/http/core/interceptor/AuthorizationInterceptor;
.super Ljava/lang/Object;
.source "AuthorizationInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAuthorization()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lcom/oculus/http/core/interceptor/AuthorizationInterceptor;->getAuthorization()Ljava/lang/String;

    move-result-object v1

    .line 33
    const-string v2, "Authorization"

    invoke-virtual {v0, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v2, "Authorization"

    .line 37
    invoke-static {v1}, Lcom/oculus/http/core/common/Authorization;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 41
    :cond_0
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0x191

    if-ne v1, v2, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/oculus/http/core/interceptor/AuthorizationInterceptor;->onUnauthorized()V

    .line 47
    :cond_1
    return-object v0
.end method

.method protected abstract onUnauthorized()V
.end method
