.class public abstract Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;
.super Ljava/lang/Object;
.source "ResultBuilderNoBundle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mBuilder:Lcom/oculus/horizon/service/result/ResultBuilder;

.field protected mService:Lcom/oculus/horizon/service/OVRService;

.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/service/OVRService;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;->mService:Lcom/oculus/horizon/service/OVRService;

    .line 25
    new-instance v0, Lcom/oculus/horizon/service/result/ResultBuilderNoBundle$1;

    invoke-direct {v0, p0, p1}, Lcom/oculus/horizon/service/result/ResultBuilderNoBundle$1;-><init>(Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;Lcom/oculus/horizon/service/OVRService;)V

    iput-object v0, p0, Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;->mBuilder:Lcom/oculus/horizon/service/result/ResultBuilder;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;->mValue:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public build(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;->mBuilder:Lcom/oculus/horizon/service/result/ResultBuilder;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/result/ResultBuilder;->build(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 51
    iget-object v0, p0, Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;->mBuilder:Lcom/oculus/horizon/service/result/ResultBuilder;

    invoke-virtual {v0}, Lcom/oculus/horizon/service/result/ResultBuilder;->didError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Landroid/os/RemoteException;

    iget-object v1, p0, Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;->mBuilder:Lcom/oculus/horizon/service/result/ResultBuilder;

    invoke-virtual {v1}, Lcom/oculus/horizon/service/result/ResultBuilder;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method abstract getResult(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
