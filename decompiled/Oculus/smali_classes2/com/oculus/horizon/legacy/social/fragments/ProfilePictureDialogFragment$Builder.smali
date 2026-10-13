.class public Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment$Builder;
.super Ljava/lang/Object;
.source "ProfilePictureDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mIsForRoadblocks:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public build()Landroidx/fragment/app/DialogFragment;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    const-string v1, "is_for_roadblocks"

    iget-boolean v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment$Builder;->mIsForRoadblocks:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    new-instance v1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;

    invoke-direct {v1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment;-><init>()V

    .line 43
    invoke-virtual {v1, v0}, Landroidx/fragment/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 44
    return-object v1
.end method

.method public setIsForRoadblocks(Z)Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment$Builder;
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureDialogFragment$Builder;->mIsForRoadblocks:Z

    .line 35
    return-object p0
.end method
