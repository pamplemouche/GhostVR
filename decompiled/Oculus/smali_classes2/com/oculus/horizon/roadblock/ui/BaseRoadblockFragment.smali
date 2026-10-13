.class public abstract Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "BaseRoadblockFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment$OnRoadblockCompletedListener;
    }
.end annotation


# instance fields
.field protected mRoadblock:Lcom/oculus/horizon/roadblock/model/Roadblock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 49
    instance-of v0, p1, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment$OnRoadblockCompletedListener;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BaseRoadblockFragment must be attached to an OnRoadblockCompletedListener!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onAttach(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    if-eqz p1, :cond_0

    const-string v0, "roadblock"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "roadblock"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/roadblock/model/Roadblock;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->setRoadblock(Lcom/oculus/horizon/roadblock/model/Roadblock;)V

    .line 38
    :cond_0
    return-void
.end method

.method protected onRoadblockCompleted()V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment$OnRoadblockCompletedListener;

    .line 58
    iget-object v1, p0, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->mRoadblock:Lcom/oculus/horizon/roadblock/model/Roadblock;

    invoke-interface {v0, v1}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment$OnRoadblockCompletedListener;->onRoadblockCompleted(Lcom/oculus/horizon/roadblock/model/Roadblock;)V

    .line 59
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 44
    const-string v0, "roadblock"

    iget-object v1, p0, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->mRoadblock:Lcom/oculus/horizon/roadblock/model/Roadblock;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    return-void
.end method

.method public setRoadblock(Lcom/oculus/horizon/roadblock/model/Roadblock;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->mRoadblock:Lcom/oculus/horizon/roadblock/model/Roadblock;

    .line 64
    return-void
.end method

.method public abstract shouldDisableBackButton()Z
.end method
