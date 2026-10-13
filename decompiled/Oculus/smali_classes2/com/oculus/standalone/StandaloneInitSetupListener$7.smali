.class Lcom/oculus/standalone/StandaloneInitSetupListener$7;
.super Ljava/lang/Object;
.source "StandaloneInitSetupListener.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/standalone/StandaloneInitSetupListener;->fetchAndSetNuxHighPriDownloadWaitTime()Lbolts/Task;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

.field final synthetic val$successCapture:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/oculus/standalone/StandaloneInitSetupListener;Lbolts/Capture;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$7;->this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

    iput-object p2, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$7;->val$successCapture:Lbolts/Capture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$7;->val$successCapture:Lbolts/Capture;

    invoke-virtual {v0}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$7;->this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

    invoke-static {v0}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$608(Lcom/oculus/standalone/StandaloneInitSetupListener;)I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 214
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 216
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/oculus/standalone/StandaloneInitSetupListener$7;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
