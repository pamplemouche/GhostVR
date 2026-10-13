.class public Lcom/oculus/horizon/api/flytrap/FlytrapRequest;
.super Lcom/oculus/http/core/base/ApiRequest;
.source "FlytrapRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiRequest",
        "<",
        "Lcom/oculus/horizon/api/flytrap/FlytrapResponse;",
        ">;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final app_id:Ljava/lang/String;

.field public final app_secret:Ljava/lang/String;

.field public final client_time:Ljava/lang/String;

.field public final config_id:Ljava/lang/String;

.field public final locale:Ljava/lang/String;

.field public logcat:Lretrofit/mime/TypedFile;

.field public final metadata:Ljava/lang/String;

.field public screenshot:Lretrofit/mime/TypedFile;

.field public stackDump:Lretrofit/mime/TypedFile;

.field public final user_identifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiRequest;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/oculus/horizon/api/flytrap/FlytrapRequest;->app_id:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/oculus/horizon/api/flytrap/FlytrapRequest;->app_secret:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/oculus/horizon/api/flytrap/FlytrapRequest;->user_identifier:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/oculus/horizon/api/flytrap/FlytrapRequest;->client_time:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/oculus/horizon/api/flytrap/FlytrapRequest;->config_id:Ljava/lang/String;

    .line 62
    iput-object p6, p0, Lcom/oculus/horizon/api/flytrap/FlytrapRequest;->locale:Ljava/lang/String;

    .line 63
    iput-object p7, p0, Lcom/oculus/horizon/api/flytrap/FlytrapRequest;->metadata:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oculus/horizon/api/flytrap/FlytrapRequest;->app_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/api/flytrap/FlytrapRequest;->app_secret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
