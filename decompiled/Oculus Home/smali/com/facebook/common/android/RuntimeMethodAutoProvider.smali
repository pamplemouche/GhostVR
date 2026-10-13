.class public Lcom/facebook/common/android/RuntimeMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "RuntimeMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Ljava/lang/Runtime;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/facebook/common/android/RuntimeMethodAutoProvider;->get()Ljava/lang/Runtime;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Runtime;
    .locals 2

    .prologue
    .line 15
    const-string v1, "getMethod_java.lang.Runtime"

    invoke-static {v1}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 17
    :try_start_0
    invoke-static {}, Lcom/facebook/common/android/AndroidModule;->provideRuntime()Ljava/lang/Runtime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 20
    .local v0, "instance":Ljava/lang/Runtime;
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    .end local v0    # "instance":Ljava/lang/Runtime;
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v1
.end method
