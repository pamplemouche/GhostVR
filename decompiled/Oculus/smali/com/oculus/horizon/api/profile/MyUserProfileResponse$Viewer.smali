.class public Lcom/oculus/horizon/api/profile/MyUserProfileResponse$Viewer;
.super Ljava/lang/Object;
.source "MyUserProfileResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/profile/MyUserProfileResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Viewer"
.end annotation


# instance fields
.field public linked_accounts_info:Lcom/oculus/horizon/api/profile/LinkedAccounts;

.field public privacy_current_activity:Lcom/oculus/horizon/api/profile/PrivacyEdges;

.field public privacy_friends:Lcom/oculus/horizon/api/profile/PrivacyEdges;

.field public privacy_real_world_identity:Lcom/oculus/horizon/api/profile/PrivacyEdges;

.field public user:Lcom/oculus/horizon/api/common/user/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
