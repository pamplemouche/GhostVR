.class public Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "ProfilePictureBottomSheetDialogFragment.java"


# instance fields
.field private mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mIsHomeAvatarEditorEnabled:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_avatar_v2_editor"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPackageLauncherUtils:Lcom/oculus/horizon/util/launch/PackageLauncherUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPackagesCache:Lcom/oculus/common/packagescache/PackagesCache;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mProfilePictureUtils:Lcom/oculus/horizon/legacy/social/ProfilePictureUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;)V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;)V
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Lcom/oculus/common/packagescache/PackagesCache;->$ul_$xXXcom_oculus_common_packagescache_PackagesCache$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/common/packagescache/PackagesCache;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->mPackagesCache:Lcom/oculus/common/packagescache/PackagesCache;

    invoke-static {p0}, Lcom/oculus/horizon/main/MainModule;->$ul_$xXXcom_oculus_horizon_fragmentfactory_FragmentFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/ProfilePictureUtils;->$ul_$xXXcom_oculus_horizon_legacy_social_ProfilePictureUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/ProfilePictureUtils;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->mProfilePictureUtils:Lcom/oculus/horizon/legacy/social/ProfilePictureUtils;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-static {p0}, Lcom/oculus/horizon/util/launch/PackageLauncherUtils;->$ul_$xXXcom_oculus_horizon_util_launch_PackageLauncherUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/util/launch/PackageLauncherUtils;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->mPackageLauncherUtils:Lcom/oculus/horizon/util/launch/PackageLauncherUtils;

    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/LegacySocialModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Favatar$x5Fv2$x5Feditor$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->mIsHomeAvatarEditorEnabled:Ljavax/inject/Provider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;)Lcom/oculus/horizon/legacy/social/ProfilePictureUtils;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->mProfilePictureUtils:Lcom/oculus/horizon/legacy/social/ProfilePictureUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->mIsHomeAvatarEditorEnabled:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;)Lcom/oculus/horizon/logging/OculusLogger;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;)Lcom/oculus/common/packagescache/PackagesCache;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->mPackagesCache:Lcom/oculus/common/packagescache/PackagesCache;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;)Lcom/oculus/horizon/util/launch/PackageLauncherUtils;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->mPackageLauncherUtils:Lcom/oculus/horizon/util/launch/PackageLauncherUtils;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;)V

    .line 51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 56
    sget v0, Lcom/oculus/horizon/R$layout;->social_profile_picture_bottom_sheet:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 63
    sget v0, Lcom/oculus/horizon/R$id;->take_photo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    new-instance v1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment$1;-><init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    sget v0, Lcom/oculus/horizon/R$id;->choose_from_phone:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    new-instance v1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment$2;-><init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    sget v0, Lcom/oculus/horizon/R$id;->choose_oculus_picture:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    new-instance v1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment$3;-><init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    sget v0, Lcom/oculus/horizon/R$id;->edit_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 94
    new-instance v1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment$4;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment$4;-><init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void
.end method
