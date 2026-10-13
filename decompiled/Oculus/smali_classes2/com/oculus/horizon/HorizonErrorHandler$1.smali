.class Lcom/oculus/horizon/HorizonErrorHandler$1;
.super Ljava/lang/Object;
.source "HorizonErrorHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/HorizonErrorHandler;->handleError(Lretrofit/RetrofitError;)Ljava/lang/Throwable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/HorizonErrorHandler;

.field final synthetic val$cause:Lretrofit/RetrofitError;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/HorizonErrorHandler;Lretrofit/RetrofitError;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/oculus/horizon/HorizonErrorHandler$1;->this$0:Lcom/oculus/horizon/HorizonErrorHandler;

    iput-object p2, p0, Lcom/oculus/horizon/HorizonErrorHandler$1;->val$cause:Lretrofit/RetrofitError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/HorizonErrorHandler$1;->this$0:Lcom/oculus/horizon/HorizonErrorHandler;

    invoke-static {v0}, Lcom/oculus/horizon/HorizonErrorHandler;->access$000(Lcom/oculus/horizon/HorizonErrorHandler;)Lcom/oculus/horizon/debug/DebugErrorToaster;

    move-result-object v0

    new-instance v1, Lcom/oculus/http/core/base/ApiError;

    iget-object v2, p0, Lcom/oculus/horizon/HorizonErrorHandler$1;->val$cause:Lretrofit/RetrofitError;

    invoke-direct {v1, v2}, Lcom/oculus/http/core/base/ApiError;-><init>(Lretrofit/RetrofitError;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/debug/DebugErrorToaster;->toast(Lcom/oculus/http/core/base/ApiError;)V

    .line 39
    return-void
.end method
