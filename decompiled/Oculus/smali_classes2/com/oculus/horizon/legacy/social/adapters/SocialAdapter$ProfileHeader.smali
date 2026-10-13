.class public Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ProfileHeader;
.super Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;
.source "SocialAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileHeader"
.end annotation


# instance fields
.field public final profileHeaderParamsProvider:Lcom/oculus/horizon/legacy/social/adapters/ProfileHeaderParamsProvider;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/legacy/social/adapters/ProfileHeaderParamsProvider;)V
    .locals 1

    .prologue
    .line 458
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->PROFILE_HEADER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;)V

    .line 459
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ProfileHeader;->profileHeaderParamsProvider:Lcom/oculus/horizon/legacy/social/adapters/ProfileHeaderParamsProvider;

    .line 460
    return-void
.end method
