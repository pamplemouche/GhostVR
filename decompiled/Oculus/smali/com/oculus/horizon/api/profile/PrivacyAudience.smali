.class public Lcom/oculus/horizon/api/profile/PrivacyAudience;
.super Ljava/lang/Object;
.source "PrivacyAudience.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/profile/PrivacyAudience$IncludedUsers;
    }
.end annotation


# instance fields
.field public base_state:Ljava/lang/String;

.field public included_users:Lcom/oculus/horizon/api/profile/PrivacyAudience$IncludedUsers;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
