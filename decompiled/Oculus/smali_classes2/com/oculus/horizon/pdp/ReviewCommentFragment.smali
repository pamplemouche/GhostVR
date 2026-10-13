.class public Lcom/oculus/horizon/pdp/ReviewCommentFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "ReviewCommentFragment.java"


# instance fields
.field private mBinary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

.field private mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mIsViewerReview:Z

.field private mItemId:Ljava/lang/String;

.field private mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

.field private mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mStoreItemMethods:Lcom/oculus/horizon/pdp/StoreItemMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/pdp/ReviewCommentFragment;)V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/pdp/ReviewCommentFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/pdp/ReviewCommentFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/pdp/ReviewCommentFragment;)V
    .locals 1

    .prologue
    .line 30
    invoke-static {p0}, Lcom/oculus/horizon/pdp/StoreItemMethods;->$ul_$xXXcom_oculus_horizon_pdp_StoreItemMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/pdp/StoreItemMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->mStoreItemMethods:Lcom/oculus/horizon/pdp/StoreItemMethods;

    invoke-static {p0}, Lcom/oculus/horizon/social/SocialUtils;->$ul_$xXXcom_oculus_horizon_social_SocialUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/social/SocialUtils;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;

    invoke-static {p0}, Lcom/oculus/mobileconfig/init/MobileConfigInitModule;->$ul_$xXXcom_facebook_mobileconfig_factory_MobileConfig$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/mobileconfig/factory/MobileConfig;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;

    invoke-static {p0}, Lcom/oculus/horizon/main/MainModule;->$ul_$xXXcom_oculus_horizon_fragmentfactory_FragmentFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    return-void
.end method

.method private isInReviewPercentileExperiment()Z
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;

    sget-wide v2, Lcom/oculus/horizon/pdp/MC$oculus_store;->is_horizon_review_percentile_enabled:J

    invoke-interface {v0, v2, v3}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getBoolean(J)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->USER_REVIEWS_COMMENT:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/pdp/ReviewCommentFragment;)V

    .line 53
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 54
    const-string v0, "quality_rating"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item$QualityRating;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    .line 55
    const-string v0, "is_viewer_review"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->mIsViewerReview:Z

    .line 56
    const-string v0, "item_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->mItemId:Ljava/lang/String;

    .line 57
    const-string v0, "binary"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->mBinary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    .line 58
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 63
    sget v0, Lcom/oculus/horizon/R$layout;->review_row:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 68
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 69
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->pdp_review_title:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget-object v4, v4, Lcom/oculus/horizon/api/common/Item$QualityRating;->author:Lcom/oculus/horizon/api/common/user/User;

    iget-object v4, v4, Lcom/oculus/horizon/api/common/user/User;->alias:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 74
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    iget-boolean v0, p0, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->mIsViewerReview:Z

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;

    .line 81
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    iget-object v4, p0, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->mStoreItemMethods:Lcom/oculus/horizon/pdp/StoreItemMethods;

    iget-object v5, p0, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;

    .line 86
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->isInReviewPercentileExperiment()Z

    move-result v7

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;-><init>(Landroid/view/View;Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/pdp/StoreItemMethods;Lcom/oculus/horizon/social/SocialUtils;ZZ)V

    .line 87
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->mItemId:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->mBinary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->bind(Lcom/oculus/horizon/api/common/Item$QualityRating;Ljava/lang/String;Lcom/oculus/horizon/api/common/Item$AndroidBinary;)V

    .line 100
    :goto_0
    return-void

    .line 89
    :cond_0
    new-instance v0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;

    .line 92
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    iget-object v4, p0, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->mStoreItemMethods:Lcom/oculus/horizon/pdp/StoreItemMethods;

    iget-object v5, p0, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;

    .line 97
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->isInReviewPercentileExperiment()Z

    move-result v7

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;-><init>(Landroid/view/View;Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/pdp/StoreItemMethods;Lcom/oculus/horizon/social/SocialUtils;ZZ)V

    .line 98
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->mItemId:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/pdp/ReviewCommentFragment;->mBinary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->bind(Lcom/oculus/horizon/api/common/Item$QualityRating;Ljava/lang/String;Lcom/oculus/horizon/api/common/Item$AndroidBinary;)V

    goto :goto_0
.end method
