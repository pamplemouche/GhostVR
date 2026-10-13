.class Lcom/oculus/horizon/service/result/ResultBuilderNoBundle$1;
.super Lcom/oculus/horizon/service/result/ResultBuilder;
.source "ResultBuilderNoBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;-><init>(Lcom/oculus/horizon/service/OVRService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;Lcom/oculus/horizon/service/OVRService;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/oculus/horizon/service/result/ResultBuilderNoBundle$1;->this$0:Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/service/result/ResultBuilder;-><init>(Lcom/oculus/horizon/service/OVRService;)V

    return-void
.end method


# virtual methods
.method public getClassForLogging()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/service/result/ResultBuilderNoBundle$1;->this$0:Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getResult(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/service/result/ResultBuilderNoBundle$1;->this$0:Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;

    iget-object v1, p0, Lcom/oculus/horizon/service/result/ResultBuilderNoBundle$1;->this$0:Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;

    invoke-virtual {v1, p1, p2}, Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;->getResult(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;->access$002(Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 32
    const-string v2, "value"

    iget-object v0, p0, Lcom/oculus/horizon/service/result/ResultBuilderNoBundle$1;->this$0:Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;

    invoke-static {v0}, Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;->access$000(Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-object v1

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/service/result/ResultBuilderNoBundle$1;->this$0:Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;

    invoke-static {v0}, Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;->access$000(Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
