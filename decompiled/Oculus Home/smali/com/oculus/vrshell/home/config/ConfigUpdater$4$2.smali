.class Lcom/oculus/vrshell/home/config/ConfigUpdater$4$2;
.super Ljava/lang/Object;
.source "ConfigUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/config/ConfigUpdater$4;->run(Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;Lbolts/TaskCompletionSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/vrshell/home/config/ConfigUpdater$4;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/config/ConfigUpdater$4;Lbolts/TaskCompletionSource;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oculus/vrshell/home/config/ConfigUpdater$4;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$4$2;->this$1:Lcom/oculus/vrshell/home/config/ConfigUpdater$4;

    iput-object p2, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$4$2;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/oculus/vrshell/home/config/ConfigUpdater$4$2;->val$tcs:Lbolts/TaskCompletionSource;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Failed to fetch gks"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 300
    return-void
.end method
