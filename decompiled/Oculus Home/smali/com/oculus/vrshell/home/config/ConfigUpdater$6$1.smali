.class Lcom/oculus/vrshell/home/config/ConfigUpdater$6$1;
.super Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;
.source "ConfigUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/config/ConfigUpdater$6;->run(Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;Lbolts/TaskCompletionSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/vrshell/home/config/ConfigUpdater$6;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/config/ConfigUpdater$6;Lbolts/TaskCompletionSource;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oculus/vrshell/home/config/ConfigUpdater$6;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$6$1;->this$1:Lcom/oculus/vrshell/home/config/ConfigUpdater$6;

    iput-object p2, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$6$1;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchComplete()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$6$1;->val$tcs:Lbolts/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 342
    return-void
.end method
