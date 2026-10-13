.class Lcom/oculus/vrshell/home/config/ConfigUpdater$5$1;
.super Ljava/lang/Object;
.source "ConfigUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/config/ConfigUpdater$5;->run(Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;Lbolts/TaskCompletionSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/vrshell/home/config/ConfigUpdater$5;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/config/ConfigUpdater$5;Lbolts/TaskCompletionSource;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oculus/vrshell/home/config/ConfigUpdater$5;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$5$1;->this$1:Lcom/oculus/vrshell/home/config/ConfigUpdater$5;

    iput-object p2, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$5$1;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$5$1;->val$tcs:Lbolts/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 318
    return-void
.end method
