.class public Lcom/oculus/horizon/social/model/CurrentPrivacyState;
.super Ljava/lang/Object;
.source "CurrentPrivacyState.java"


# instance fields
.field public final identityInSearchState:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

.field public final includedUsers:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final state:Lcom/oculus/horizon/social/model/PrivacyState;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/social/model/PrivacyState;Lcom/google/common/collect/ImmutableList;Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/horizon/social/model/PrivacyState;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/oculus/horizon/social/model/CurrentPrivacyState;->state:Lcom/oculus/horizon/social/model/PrivacyState;

    .line 20
    iput-object p2, p0, Lcom/oculus/horizon/social/model/CurrentPrivacyState;->includedUsers:Lcom/google/common/collect/ImmutableList;

    .line 21
    iput-object p3, p0, Lcom/oculus/horizon/social/model/CurrentPrivacyState;->identityInSearchState:Lcom/oculus/horizon/social/model/IdentityInSearchPrivacyState;

    .line 22
    return-void
.end method
