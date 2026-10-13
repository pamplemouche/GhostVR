.class Lcom/oculus/systemutilities/module/GateKeepers$2;
.super Ljava/lang/Object;
.source "GateKeepers.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/systemutilities/module/GateKeepers;->remoteFetchGKs(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/oculus/systemutilities/module/GateKeepers;

.field final synthetic val$accessToken:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/systemutilities/module/GateKeepers;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/systemutilities/module/GateKeepers;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/oculus/systemutilities/module/GateKeepers$2;->this$0:Lcom/oculus/systemutilities/module/GateKeepers;

    iput-object p2, p0, Lcom/oculus/systemutilities/module/GateKeepers$2;->val$accessToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/systemutilities/module/GateKeepers$2;->val$userId:Ljava/lang/String;

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
    .line 291
    invoke-virtual {p0}, Lcom/oculus/systemutilities/module/GateKeepers$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 294
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v2, Lcom/oculus/device/APIInterceptor;

    iget-object v3, p0, Lcom/oculus/systemutilities/module/GateKeepers$2;->this$0:Lcom/oculus/systemutilities/module/GateKeepers;

    .line 295
    invoke-static {v3}, Lcom/oculus/systemutilities/module/GateKeepers;->access$500(Lcom/oculus/systemutilities/module/GateKeepers;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oculus/device/APIInterceptor;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 297
    .local v1, "client":Lokhttp3/OkHttpClient;
    iget-object v0, p0, Lcom/oculus/systemutilities/module/GateKeepers$2;->this$0:Lcom/oculus/systemutilities/module/GateKeepers;

    invoke-static {v0}, Lcom/oculus/systemutilities/module/GateKeepers;->access$500(Lcom/oculus/systemutilities/module/GateKeepers;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/systemutilities/module/GateKeepers$2;->val$accessToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/systemutilities/module/GateKeepers$2;->val$userId:Ljava/lang/String;

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/oculus/systemutilities/module/GateKeepers;->fetchAndCacheGKs(Landroid/content/Context;Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 298
    return-object v4
.end method
