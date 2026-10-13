.class public abstract Lcom/oculus/horizon/fragmentfactory/FragmentFactory;
.super Ljava/lang/Object;
.source "FragmentFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isDefaultFragment(Landroidx/fragment/app/Fragment;)Z
.end method

.method public abstract newAchievementsFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
.end method

.method public abstract newApplicationPdpFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
.end method

.method public abstract newApplicationPdpFragment(Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
.end method

.method public abstract newApplicationPdpFragment(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/model/StyleTheme;Lcom/oculus/horizon/logging/TrackingViews$View;)Landroidx/fragment/app/Fragment;
    .param p3    # Lcom/oculus/model/StyleTheme;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract newBluetoothSettingsFragment()Landroidx/fragment/app/Fragment;
.end method

.method public abstract newBundlePdpFragment(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/model/StyleTheme;Lcom/oculus/horizon/logging/TrackingViews$View;)Landroidx/fragment/app/Fragment;
    .param p3    # Lcom/oculus/model/StyleTheme;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract newDefaultFragment()Landroidx/fragment/app/Fragment;
.end method

.method public abstract newEventsFragment()Landroidx/fragment/app/Fragment;
.end method

.method public abstract newFBConnectFragment()Landroidx/fragment/app/Fragment;
.end method

.method public abstract newFBConnectFragment(Z)Landroidx/fragment/app/Fragment;
.end method

.method public abstract newFriendsFragment()Landroidx/fragment/app/Fragment;
.end method

.method public abstract newInAppPdpFragment(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/model/StyleTheme;Lcom/oculus/horizon/logging/TrackingViews$View;)Landroidx/fragment/app/Fragment;
    .param p3    # Lcom/oculus/model/StyleTheme;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract newLibraryFragment()Landroidx/fragment/app/Fragment;
.end method

.method public abstract newNotificationsFragment()Landroidx/fragment/app/Fragment;
.end method

.method public abstract newPartyInvitesFragment()Landroidx/fragment/app/Fragment;
.end method

.method public abstract newProfileFragment(Landroid/os/Parcelable;)Landroidx/fragment/app/Fragment;
.end method

.method public abstract newProfileFragment(Ljava/lang/String;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
.end method

.method public abstract newRedeemCodeActivatedFragment(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;)Landroidx/fragment/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/api/common/ParcelableBundle;",
            ">;)",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation
.end method

.method public abstract newReviewCommentFragment(Ljava/lang/String;ZLcom/oculus/horizon/api/common/Item$QualityRating;Lcom/oculus/horizon/api/common/Item$AndroidBinary;)Landroidx/fragment/app/Fragment;
.end method

.method public abstract newReviewFragment(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/oculus/horizon/api/common/Item$QualityRating;)Landroidx/fragment/app/Fragment;
    .param p5    # Lcom/oculus/horizon/api/common/Item$QualityRating;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract newReviewsFragment(Lcom/oculus/horizon/api/common/Item;)Landroidx/fragment/app/Fragment;
.end method

.method public abstract newSearchFragment()Landroidx/fragment/app/Fragment;
.end method

.method public abstract newSettingsFragment()Landroidx/fragment/app/Fragment;
.end method

.method public abstract newStoreFragment()Landroidx/fragment/app/Fragment;
.end method

.method public abstract newStoreSectionFragment(Ljava/lang/String;Ljava/util/ArrayList;)Landroidx/fragment/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;)",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation
.end method
