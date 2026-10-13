.class Lcom/oculus/horizon/cubemaps/Photo360View$1;
.super Ljava/lang/Object;
.source "Photo360View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/cubemaps/Photo360View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cubemaps/Photo360View;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cubemaps/Photo360View;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/oculus/horizon/cubemaps/Photo360View$1;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View$1;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    new-instance v1, Lcom/oculus/horizon/cubemaps/Photo360View$OnSceneUpdateTask;

    iget-object v2, p0, Lcom/oculus/horizon/cubemaps/Photo360View$1;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/oculus/horizon/cubemaps/Photo360View$OnSceneUpdateTask;-><init>(Lcom/oculus/horizon/cubemaps/Photo360View;Lcom/oculus/horizon/cubemaps/Photo360View$1;)V

    invoke-static {v0, v1}, Lcom/oculus/horizon/cubemaps/Photo360View;->access$002(Lcom/oculus/horizon/cubemaps/Photo360View;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 100
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View$1;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    invoke-static {v0}, Lcom/oculus/horizon/cubemaps/Photo360View;->access$000(Lcom/oculus/horizon/cubemaps/Photo360View;)Landroid/os/AsyncTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 101
    return-void
.end method
