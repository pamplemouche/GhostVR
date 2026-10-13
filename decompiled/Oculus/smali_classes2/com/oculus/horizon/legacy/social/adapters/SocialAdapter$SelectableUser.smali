.class public Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$SelectableUser;
.super Ljava/lang/Object;
.source "SocialAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectableUser"
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final selected:Z

.field public final user:Lcom/oculus/horizon/api/common/user/User;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/api/common/user/User;Z)V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$SelectableUser;->user:Lcom/oculus/horizon/api/common/user/User;

    .line 504
    iput-boolean p2, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$SelectableUser;->selected:Z

    .line 505
    return-void
.end method
