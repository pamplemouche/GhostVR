.class Lcom/oculus/antipiracy/AntiPiracyJobService$1$2;
.super Ljava/lang/Object;
.source "AntiPiracyJobService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/antipiracy/AntiPiracyJobService$1;->run()V
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
.field final synthetic this$1:Lcom/oculus/antipiracy/AntiPiracyJobService$1;


# direct methods
.method constructor <init>(Lcom/oculus/antipiracy/AntiPiracyJobService$1;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/oculus/antipiracy/AntiPiracyJobService$1$2;->this$1:Lcom/oculus/antipiracy/AntiPiracyJobService$1;

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
    .line 40
    invoke-virtual {p0}, Lcom/oculus/antipiracy/AntiPiracyJobService$1$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/antipiracy/AntiPiracyJobService$1$2;->this$1:Lcom/oculus/antipiracy/AntiPiracyJobService$1;

    iget-object v0, v0, Lcom/oculus/antipiracy/AntiPiracyJobService$1;->this$0:Lcom/oculus/antipiracy/AntiPiracyJobService;

    invoke-static {v0}, Lcom/oculus/antipiracy/AntiPiracyJobService;->access$200(Lcom/oculus/antipiracy/AntiPiracyJobService;)Lcom/oculus/antipiracy/AntiPiracyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/antipiracy/AntiPiracyManager;->isDeveloperModeEnabledOnDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/antipiracy/AntiPiracyJobService$1$2;->this$1:Lcom/oculus/antipiracy/AntiPiracyJobService$1;

    iget-object v0, v0, Lcom/oculus/antipiracy/AntiPiracyJobService$1;->this$0:Lcom/oculus/antipiracy/AntiPiracyJobService;

    .line 44
    invoke-static {v0}, Lcom/oculus/antipiracy/AntiPiracyJobService;->access$300(Lcom/oculus/antipiracy/AntiPiracyJobService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/oculus/antipiracy/AntiPiracyJobService$1$2;->this$1:Lcom/oculus/antipiracy/AntiPiracyJobService$1;

    iget-object v0, v0, Lcom/oculus/antipiracy/AntiPiracyJobService$1;->this$0:Lcom/oculus/antipiracy/AntiPiracyJobService;

    invoke-static {v0}, Lcom/oculus/antipiracy/AntiPiracyJobService;->access$200(Lcom/oculus/antipiracy/AntiPiracyJobService;)Lcom/oculus/antipiracy/AntiPiracyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/antipiracy/AntiPiracyManager;->performAntiPiracyKillSwitchAction()V

    .line 47
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
