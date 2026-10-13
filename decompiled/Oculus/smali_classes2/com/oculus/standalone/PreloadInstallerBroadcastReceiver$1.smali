.class Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "PreloadInstallerBroadcastReceiver.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
.field final synthetic this$0:Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver$1;->this$0:Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;

    iput-object p2, p0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver$1;->val$intent:Landroid/content/Intent;

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
    .line 61
    invoke-virtual {p0}, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver$1;->this$0:Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;

    iget-object v1, p0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->access$000(Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;Landroid/content/Intent;)V

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method
