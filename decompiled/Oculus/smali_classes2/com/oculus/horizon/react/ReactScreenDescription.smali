.class public Lcom/oculus/horizon/react/ReactScreenDescription;
.super Ljava/lang/Object;
.source "ReactScreenDescription.java"


# instance fields
.field final mAppKey:Ljava/lang/String;

.field final mCustomFragmentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/oculus/horizon/react/OculusReactFragment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final mParams:Landroid/os/Bundle;

.field final mTrackingKey:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/oculus/horizon/react/ReactScreenDescription;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Class;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/oculus/horizon/react/OculusReactFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/oculus/horizon/react/ReactScreenDescription;->mAppKey:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/oculus/horizon/react/ReactScreenDescription;->mParams:Landroid/os/Bundle;

    .line 27
    iput-object p3, p0, Lcom/oculus/horizon/react/ReactScreenDescription;->mTrackingKey:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/oculus/horizon/react/ReactScreenDescription;->mCustomFragmentClass:Ljava/lang/Class;

    .line 29
    return-void
.end method

.method public static createChangePassword()Lcom/oculus/horizon/react/ReactScreenDescription;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    new-instance v0, Lcom/oculus/horizon/react/ReactScreenDescription;

    const-string v1, "HorizonChangePassword"

    sget-object v2, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_PASSWORD:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 38
    invoke-virtual {v2}, Lcom/oculus/horizon/logging/TrackingViews$View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/oculus/horizon/react/ReactScreenDescription;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static createFeed()Lcom/oculus/horizon/react/ReactScreenDescription;
    .locals 5

    .prologue
    .line 83
    new-instance v0, Lcom/oculus/horizon/react/ReactScreenDescription;

    const-string v1, "HorizonFeedScreen"

    const/4 v2, 0x0

    sget-object v3, Lcom/oculus/horizon/logging/TrackingViews$View;->FEED:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 86
    invoke-virtual {v3}, Lcom/oculus/horizon/logging/TrackingViews$View;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/oculus/horizon/react/OculusReactFeedFragment;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/react/ReactScreenDescription;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static createPDP(Ljava/lang/String;)Lcom/oculus/horizon/react/ReactScreenDescription;
    .locals 5

    .prologue
    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    const-string v1, "appID"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v1, Lcom/oculus/horizon/react/ReactScreenDescription;

    const-string v2, "HorizonPDPScreen"

    sget-object v3, Lcom/oculus/horizon/logging/TrackingViews$View;->PRODUCT_DETAILS:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 64
    invoke-virtual {v3}, Lcom/oculus/horizon/logging/TrackingViews$View;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/oculus/horizon/react/ReactScreenDescription;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)V

    return-object v1
.end method

.method public static createPlayground()Lcom/oculus/horizon/react/ReactScreenDescription;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/oculus/horizon/react/ReactScreenDescription;

    const-string v1, "HorizonApp"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/react/ReactScreenDescription;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static createPrivacySettings()Lcom/oculus/horizon/react/ReactScreenDescription;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/oculus/horizon/react/ReactScreenDescription;

    const-string v1, "HorizonPrivacySettings"

    sget-object v2, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_PRIVACY:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 33
    invoke-virtual {v2}, Lcom/oculus/horizon/logging/TrackingViews$View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/oculus/horizon/react/ReactScreenDescription;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static createPurchaseHistory()Lcom/oculus/horizon/react/ReactScreenDescription;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    new-instance v0, Lcom/oculus/horizon/react/ReactScreenDescription;

    const-string v1, "HorizonPurchaseHistoryScreen"

    const-string v2, ""

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/oculus/horizon/react/ReactScreenDescription;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static createReview(Ljava/lang/String;)Lcom/oculus/horizon/react/ReactScreenDescription;
    .locals 5

    .prologue
    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    const-string v1, "appID"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v1, Lcom/oculus/horizon/react/ReactScreenDescription;

    const-string v2, "HorizonReviewScreen"

    sget-object v3, Lcom/oculus/horizon/logging/TrackingViews$View;->USER_REVIEWS_UPDATE:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 71
    invoke-virtual {v3}, Lcom/oculus/horizon/logging/TrackingViews$View;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/oculus/horizon/react/ReactScreenDescription;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)V

    return-object v1
.end method

.method public static createSection(Ljava/lang/String;)Lcom/oculus/horizon/react/ReactScreenDescription;
    .locals 5

    .prologue
    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    const-string v1, "sectionID"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v1, Lcom/oculus/horizon/react/ReactScreenDescription;

    const-string v2, "HorizonSectionScreen"

    sget-object v3, Lcom/oculus/horizon/logging/TrackingViews$View;->STORE_SECTION:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 57
    invoke-virtual {v3}, Lcom/oculus/horizon/logging/TrackingViews$View;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/oculus/horizon/react/ReactScreenDescription;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)V

    return-object v1
.end method

.method public static createStore()Lcom/oculus/horizon/react/ReactScreenDescription;
    .locals 5

    .prologue
    .line 46
    new-instance v0, Lcom/oculus/horizon/react/ReactScreenDescription;

    const-string v1, "HorizonStoreScreen"

    const/4 v2, 0x0

    sget-object v3, Lcom/oculus/horizon/logging/TrackingViews$View;->STORE:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 49
    invoke-virtual {v3}, Lcom/oculus/horizon/logging/TrackingViews$View;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/oculus/horizon/react/OculusReactStoreFragment;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/react/ReactScreenDescription;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static createStoreOverride()Lcom/oculus/horizon/react/ReactScreenDescription;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    new-instance v0, Lcom/oculus/horizon/react/ReactScreenDescription;

    const-string v1, "HorizonStoreOverrideScreen"

    const-string v2, ""

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/oculus/horizon/react/ReactScreenDescription;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method
