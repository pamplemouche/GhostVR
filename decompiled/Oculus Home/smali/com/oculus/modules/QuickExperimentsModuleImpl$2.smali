.class Lcom/oculus/modules/QuickExperimentsModuleImpl$2;
.super Ljava/lang/Object;
.source "QuickExperimentsModuleImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/QuickExperimentsModuleImpl;->remoteFetchQEsImpl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/modules/QuickExperimentsModuleImpl;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/modules/QuickExperimentsModuleImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/QuickExperimentsModuleImpl;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/oculus/modules/QuickExperimentsModuleImpl$2;->this$0:Lcom/oculus/modules/QuickExperimentsModuleImpl;

    iput-object p2, p0, Lcom/oculus/modules/QuickExperimentsModuleImpl$2;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/oculus/modules/QuickExperimentsModuleImpl$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 307
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v2, Lcom/oculus/device/APIInterceptor;

    iget-object v3, p0, Lcom/oculus/modules/QuickExperimentsModuleImpl$2;->this$0:Lcom/oculus/modules/QuickExperimentsModuleImpl;

    .line 308
    invoke-static {v3}, Lcom/oculus/modules/QuickExperimentsModuleImpl;->access$600(Lcom/oculus/modules/QuickExperimentsModuleImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oculus/device/APIInterceptor;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 309
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 310
    .local v0, "client":Lokhttp3/OkHttpClient;
    iget-object v1, p0, Lcom/oculus/modules/QuickExperimentsModuleImpl$2;->this$0:Lcom/oculus/modules/QuickExperimentsModuleImpl;

    invoke-static {v1}, Lcom/oculus/modules/QuickExperimentsModuleImpl;->access$600(Lcom/oculus/modules/QuickExperimentsModuleImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/modules/QuickExperimentsModuleImpl$2;->val$userId:Ljava/lang/String;

    invoke-static {v1, v0, v2, v4, v4}, Lcom/oculus/modules/QuickExperimentsModuleImpl;->fetchAndCacheQEs(Landroid/content/Context;Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 311
    return-object v4
.end method
