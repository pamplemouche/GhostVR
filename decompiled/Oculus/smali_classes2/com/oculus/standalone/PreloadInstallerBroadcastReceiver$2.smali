.class Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver$2;
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


# direct methods
.method constructor <init>(Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver$2;->this$0:Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;

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
    .line 72
    invoke-virtual {p0}, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver$2;->this$0:Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;

    invoke-static {v0}, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->access$100(Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;)V

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method
