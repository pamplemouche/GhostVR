.class public Lcom/oculus/auth/util/AccessTokenUtilsAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "AccessTokenUtilsAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/auth/util/AccessTokenUtils;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/auth/util/AccessTokenUtils;
    .locals 2

    .prologue
    .line 14
    const-string v1, "getMethod_com.oculus.auth.util.AccessTokenUtils"

    invoke-static {v1}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 16
    :try_start_0
    new-instance v0, Lcom/oculus/auth/util/AccessTokenUtils;

    invoke-direct {v0, p0}, Lcom/oculus/auth/util/AccessTokenUtils;-><init>(Lcom/facebook/inject/InjectorLike;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .local v0, "instance":Lcom/oculus/auth/util/AccessTokenUtils;
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    .end local v0    # "instance":Lcom/oculus/auth/util/AccessTokenUtils;
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/oculus/auth/util/AccessTokenUtilsAutoProvider;->get()Lcom/oculus/auth/util/AccessTokenUtils;

    move-result-object v0

    return-object v0
.end method
