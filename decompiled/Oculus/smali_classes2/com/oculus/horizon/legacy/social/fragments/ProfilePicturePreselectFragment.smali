.class public Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "ProfilePicturePreselectFragment.java"

# interfaces
.implements Lcom/oculus/horizon/common/BackPressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;,
        Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;,
        Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectUriItem;
    }
.end annotation


# static fields
.field private static final ADAPTER_ITEMS:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAdapter:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;

.field private mBackFinishes:Z

.field private mBottomNavHelper:Lcom/oculus/horizon/main/BottomNavHelper;

.field private mContinueButton:Landroid/widget/TextView;

.field private mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mIsInNux:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mProfilePictureFileHelper:Lcom/oculus/horizon/camera/ProfilePictureFileHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mResources:Landroid/content/res/Resources;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSelectedItem:I

.field private mSelectedView:Landroid/view/View;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)V
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)V
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lcom/facebook/common/android/AndroidModule;->$ul_$xXXandroid_content_res_Resources$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mResources:Landroid/content/res/Resources;

    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/MeManager;->$ul_$xXXcom_oculus_horizon_legacy_social_MeManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-static {p0}, Lcom/facebook/common/android/AndroidModule;->$ul_$xXXandroid_view_LayoutInflater$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-static {p0}, Lcom/oculus/horizon/camera/CameraModule;->$ul_$xXXcom_oculus_horizon_camera_ProfilePictureFileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/camera/ProfilePictureFileHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mProfilePictureFileHelper:Lcom/oculus/horizon/camera/ProfilePictureFileHelper;

    invoke-static {p0}, Lcom/oculus/horizon/main/MainModule;->$ul_$xXXcom_oculus_horizon_fragmentfactory_FragmentFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 16

    .prologue
    .line 55
    const-class v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->TAG:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v1, Lcom/oculus/horizon/R$drawable;->premade_alien:I

    invoke-direct {v0, v1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    new-instance v1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v2, Lcom/oculus/horizon/R$drawable;->premade_anther1:I

    invoke-direct {v1, v2}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    new-instance v2, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v3, Lcom/oculus/horizon/R$drawable;->premade_balloondog:I

    invoke-direct {v2, v3}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    new-instance v3, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v4, Lcom/oculus/horizon/R$drawable;->premade_bigeyecharacter:I

    invoke-direct {v3, v4}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    new-instance v4, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v5, Lcom/oculus/horizon/R$drawable;->premade_bluemonster:I

    invoke-direct {v4, v5}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    new-instance v5, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v6, Lcom/oculus/horizon/R$drawable;->premade_bubblewoman:I

    invoke-direct {v5, v6}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    new-instance v6, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v7, Lcom/oculus/horizon/R$drawable;->premade_dance2:I

    invoke-direct {v6, v7}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    new-instance v7, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v8, Lcom/oculus/horizon/R$drawable;->premade_darkwoman:I

    invoke-direct {v7, v8}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    new-instance v8, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v9, Lcom/oculus/horizon/R$drawable;->premade_digitalcap:I

    invoke-direct {v8, v9}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    new-instance v9, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v10, Lcom/oculus/horizon/R$drawable;->premade_doggy1:I

    invoke-direct {v9, v10}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    new-instance v10, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v11, Lcom/oculus/horizon/R$drawable;->premade_doggy2:I

    invoke-direct {v10, v11}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    new-instance v11, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v12, Lcom/oculus/horizon/R$drawable;->premade_doggy4:I

    invoke-direct {v11, v12}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    const/16 v12, 0x13

    new-array v12, v12, [Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    const/4 v13, 0x0

    new-instance v14, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v15, Lcom/oculus/horizon/R$drawable;->premade_glowgirl2:I

    invoke-direct {v14, v15}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    aput-object v14, v12, v13

    const/4 v13, 0x1

    new-instance v14, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v15, Lcom/oculus/horizon/R$drawable;->premade_glowgirl3:I

    invoke-direct {v14, v15}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    aput-object v14, v12, v13

    const/4 v13, 0x2

    new-instance v14, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v15, Lcom/oculus/horizon/R$drawable;->premade_hbgob:I

    invoke-direct {v14, v15}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    aput-object v14, v12, v13

    const/4 v13, 0x3

    new-instance v14, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v15, Lcom/oculus/horizon/R$drawable;->premade_hbwolf:I

    invoke-direct {v14, v15}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    aput-object v14, v12, v13

    const/4 v13, 0x4

    new-instance v14, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v15, Lcom/oculus/horizon/R$drawable;->premade_henrysmile:I

    invoke-direct {v14, v15}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    aput-object v14, v12, v13

    const/4 v13, 0x5

    new-instance v14, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v15, Lcom/oculus/horizon/R$drawable;->premade_kuma:I

    invoke-direct {v14, v15}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    aput-object v14, v12, v13

    const/4 v13, 0x6

    new-instance v14, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v15, Lcom/oculus/horizon/R$drawable;->premade_ladybug1:I

    invoke-direct {v14, v15}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    aput-object v14, v12, v13

    const/4 v13, 0x7

    new-instance v14, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v15, Lcom/oculus/horizon/R$drawable;->premade_lightblue:I

    invoke-direct {v14, v15}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    aput-object v14, v12, v13

    const/16 v13, 0x8

    new-instance v14, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v15, Lcom/oculus/horizon/R$drawable;->premade_mask:I

    invoke-direct {v14, v15}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    aput-object v14, v12, v13

    const/16 v13, 0x9

    new-instance v14, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v15, Lcom/oculus/horizon/R$drawable;->premade_mineshaft:I

    invoke-direct {v14, v15}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    aput-object v14, v12, v13

    const/16 v13, 0xa

    new-instance v14, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v15, Lcom/oculus/horizon/R$drawable;->premade_orangewoman:I

    invoke-direct {v14, v15}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    aput-object v14, v12, v13

    const/16 v13, 0xb

    new-instance v14, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v15, Lcom/oculus/horizon/R$drawable;->premade_origami:I

    invoke-direct {v14, v15}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    aput-object v14, v12, v13

    const/16 v13, 0xc

    new-instance v14, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v15, Lcom/oculus/horizon/R$drawable;->premade_papertown:I

    invoke-direct {v14, v15}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    aput-object v14, v12, v13

    const/16 v13, 0xd

    new-instance v14, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v15, Lcom/oculus/horizon/R$drawable;->premade_pink:I

    invoke-direct {v14, v15}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    aput-object v14, v12, v13

    const/16 v13, 0xe

    new-instance v14, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v15, Lcom/oculus/horizon/R$drawable;->premade_polyfox:I

    invoke-direct {v14, v15}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    aput-object v14, v12, v13

    const/16 v13, 0xf

    new-instance v14, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v15, Lcom/oculus/horizon/R$drawable;->premade_robot:I

    invoke-direct {v14, v15}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    aput-object v14, v12, v13

    const/16 v13, 0x10

    new-instance v14, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v15, Lcom/oculus/horizon/R$drawable;->premade_underlitdigital:I

    invoke-direct {v14, v15}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    aput-object v14, v12, v13

    const/16 v13, 0x11

    new-instance v14, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v15, Lcom/oculus/horizon/R$drawable;->premade_wanda:I

    invoke-direct {v14, v15}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    aput-object v14, v12, v13

    const/16 v13, 0x12

    new-instance v14, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    sget v15, Lcom/oculus/horizon/R$drawable;->premade_watson1:I

    invoke-direct {v14, v15}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;-><init>(I)V

    aput-object v14, v12, v13

    .line 58
    invoke-static/range {v0 .. v12}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->ADAPTER_ITEMS:Lcom/google/common/collect/ImmutableList;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    .line 93
    new-instance v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;-><init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$1;)V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mSelectedItem:I

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mBackFinishes:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mSelectedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mSelectedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->updateContinueButton()V

    return-void
.end method

.method static synthetic access$1300(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$202(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;I)I
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$300(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->navigateToDestination()V

    return-void
.end method

.method static synthetic access$400(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->onProfilePictureSaved()V

    return-void
.end method

.method static synthetic access$700(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)Lcom/oculus/horizon/camera/ProfilePictureFileHelper;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mProfilePictureFileHelper:Lcom/oculus/horizon/camera/ProfilePictureFileHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)Lcom/oculus/horizon/legacy/social/MeManager;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private navigateToDestination()V
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mBackFinishes:Z

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->navigateToMe()V

    goto :goto_0
.end method

.method private navigateToMe()V
    .locals 3

    .prologue
    .line 271
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    .line 272
    invoke-virtual {v2}, Lcom/oculus/horizon/legacy/social/MeManager;->me()Lcom/oculus/horizon/api/common/user/User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newProfileFragment(Landroid/os/Parcelable;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->makeTopLevel()Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 275
    return-void
.end method

.method private onProfilePictureSaved()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-boolean v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mIsInNux:Z

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportProfilePictureChanged(Z)V

    .line 224
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mProfilePictureFileHelper:Lcom/oculus/horizon/camera/ProfilePictureFileHelper;

    new-instance v1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$3;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$3;-><init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->startUploadProfilePictureAndDeleteAfterwards(Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 243
    return-void
.end method

.method private updateContinueButton()V
    .locals 2

    .prologue
    .line 246
    iget v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mSelectedItem:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mContinueButton:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->common_cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mContinueButton:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->common_done:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SOCIAL_AVATAR_SELECTION:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mBackFinishes:Z

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 281
    const/4 v0, 0x1

    .line 283
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)V

    .line 114
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_skip_roadblocks"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mIsInNux:Z

    .line 115
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_fragment_arg_back_finishes"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mBackFinishes:Z

    .line 116
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 120
    sget v0, Lcom/oculus/horizon/R$layout;->profile_picture_preselect_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onPause()V

    .line 216
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mBottomNavHelper:Lcom/oculus/horizon/main/BottomNavHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/main/BottomNavHelper;->setVisibility(I)V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mBottomNavHelper:Lcom/oculus/horizon/main/BottomNavHelper;

    .line 219
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->updateContinueButton()V

    .line 220
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 198
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 200
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/main/MainActivity;

    .line 201
    sget-object v1, Lcom/oculus/horizon/mainnavigation/NavItem;->PROFILE:Lcom/oculus/horizon/mainnavigation/NavItem;

    sget v2, Lcom/oculus/horizon/R$string;->social_choose_picture:I

    .line 202
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 201
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/main/MainActivity;->updateNavigation(Lcom/oculus/horizon/mainnavigation/NavItem;Ljava/lang/String;Z)V

    .line 205
    invoke-virtual {v0}, Lcom/oculus/horizon/main/MainActivity;->getBottomNavHelper()Lcom/oculus/horizon/main/BottomNavHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mBottomNavHelper:Lcom/oculus/horizon/main/BottomNavHelper;

    .line 206
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mBottomNavHelper:Lcom/oculus/horizon/main/BottomNavHelper;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/main/BottomNavHelper;->setVisibility(I)V

    .line 208
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->updateContinueButton()V

    .line 209
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 125
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 127
    sget v0, Lcom/oculus/horizon/R$id;->view_pager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 128
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 130
    sget v1, Lcom/oculus/horizon/R$id;->page_indicator:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/viewpagerindicator/CirclePageIndicator;

    .line 131
    invoke-virtual {v1, v0}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->ADAPTER_ITEMS:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 135
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-virtual {v1}, Lcom/oculus/horizon/legacy/social/MeManager;->me()Lcom/oculus/horizon/api/common/user/User;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_0

    .line 137
    new-instance v2, Ljava/util/Random;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/user/User;->alias:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v4, v1

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-static {v0, v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->setItems(Lcom/google/common/collect/ImmutableList;)V

    .line 142
    sget v0, Lcom/oculus/horizon/R$id;->take_photo_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 143
    new-instance v1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$1;-><init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    sget v0, Lcom/oculus/horizon/R$id;->continue_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mContinueButton:Landroid/widget/TextView;

    .line 157
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->mContinueButton:Landroid/widget/TextView;

    new-instance v1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$2;-><init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    return-void
.end method
