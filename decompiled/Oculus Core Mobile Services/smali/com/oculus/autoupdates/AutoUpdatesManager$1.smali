.class Lcom/oculus/autoupdates/AutoUpdatesManager$1;
.super Landroid/os/ResultReceiver;
.source "AutoUpdatesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/autoupdates/AutoUpdatesManager;->checkForUpdatesAndInstallIfNecessary()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/autoupdates/AutoUpdatesManager;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/oculus/autoupdates/AutoUpdatesManager;Landroid/os/Handler;Lbolts/TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/oculus/autoupdates/AutoUpdatesManager$1;->this$0:Lcom/oculus/autoupdates/AutoUpdatesManager;

    iput-object p3, p0, Lcom/oculus/autoupdates/AutoUpdatesManager$1;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/oculus/autoupdates/AutoUpdatesManager$1;->this$0:Lcom/oculus/autoupdates/AutoUpdatesManager;

    invoke-virtual {v0}, Lcom/oculus/autoupdates/AutoUpdatesManager;->autoUpdate()I

    move-result v0

    .line 124
    iget-object v1, p0, Lcom/oculus/autoupdates/AutoUpdatesManager$1;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 125
    return-void
.end method
