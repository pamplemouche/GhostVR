.class final Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;
.super Ljava/lang/Object;
.source "ProfilePicturePreselectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PreselectResIdItem"
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final pictureResId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput p1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;->pictureResId:I

    .line 310
    return-void
.end method
