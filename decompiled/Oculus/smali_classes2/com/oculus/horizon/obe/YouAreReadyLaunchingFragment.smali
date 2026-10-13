.class public Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;
.super Landroidx/fragment/app/Fragment;
.source "YouAreReadyLaunchingFragment.java"


# instance fields
.field private mAppDetailsBackground:Landroid/view/View;

.field private mAppDetailsCaptionText:Landroid/view/View;

.field private mAppDetailsIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private mAppDetailsText:Landroid/widget/TextView;

.field private mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPhoto360View:Lcom/oculus/horizon/cubemaps/Photo360View;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;)V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;)V
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Lcom/oculus/libraryapi/OVRLibraryModule;->$ul_$xXXcom_oculus_libraryapi_OVRLibraryInternal$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/libraryapi/OVRLibraryInternal;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private static animateView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 86
    return-void
.end method

.method private hideAppDetails()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 106
    iget-object v0, p0, Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;->mAppDetailsBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;->mAppDetailsCaptionText:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;->mAppDetailsIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;->mAppDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    return-void
.end method

.method private showAppDetails(Lcom/oculus/library/model/App;)V
    .locals 3

    .prologue
    .line 101
    iget-object v1, p0, Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;->mAppDetailsIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v0, p1, Lcom/oculus/library/model/App;->images:Ljava/util/Map;

    sget-object v2, Lcom/oculus/library/model/Image$ImageName;->SOURCE_SQUARE:Lcom/oculus/library/model/Image$ImageName;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/Image;

    iget-object v0, v0, Lcom/oculus/library/model/Image;->uri:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;->mAppDetailsText:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method

.method private showCubemap()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 89
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "res"

    .line 91
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$drawable;->prologue_cubemap:I

    .line 92
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;

    invoke-direct {v1}, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;-><init>()V

    .line 96
    new-instance v2, Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;

    new-instance v3, Landroid/util/Size;

    const/16 v4, 0x602

    const/16 v5, 0x2400

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    const-string v4, ""

    invoke-direct {v2, v0, v3, v4, v6}, Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;-><init>(Ljava/lang/String;Landroid/util/Size;Ljava/lang/String;Landroid/util/Size;)V

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;->setCubemapUris(Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;)Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;

    .line 97
    iget-object v2, p0, Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;->mPhoto360View:Lcom/oculus/horizon/cubemaps/Photo360View;

    invoke-virtual {v1}, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;->build()Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;

    move-result-object v1

    invoke-virtual {v2, v6, v1, v0}, Lcom/oculus/horizon/cubemaps/Photo360View;->initialize(Ljava/lang/String;Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;Ljava/lang/String;)V

    .line 98
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;)V

    .line 48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p2    # Landroid/view/ViewGroup;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 54
    sget v0, Lcom/oculus/horizon/R$layout;->obe_you_are_ready_launching_fragment:I

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 58
    sget v0, Lcom/oculus/horizon/R$id;->background_image:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cubemaps/Photo360View;

    iput-object v0, p0, Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;->mPhoto360View:Lcom/oculus/horizon/cubemaps/Photo360View;

    .line 59
    sget v0, Lcom/oculus/horizon/R$id;->app_details_background:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;->mAppDetailsBackground:Landroid/view/View;

    .line 60
    sget v0, Lcom/oculus/horizon/R$id;->app_details_icon:I

    .line 61
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;->mAppDetailsIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 62
    sget v0, Lcom/oculus/horizon/R$id;->app_details_caption:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;->mAppDetailsCaptionText:Landroid/view/View;

    .line 63
    sget v0, Lcom/oculus/horizon/R$id;->app_details_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;->mAppDetailsText:Landroid/widget/TextView;

    .line 65
    invoke-direct {p0}, Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;->showCubemap()V

    .line 67
    iget-object v0, p0, Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    const-string v2, "com.oculus.prologue"

    invoke-virtual {v0, v2}, Lcom/oculus/libraryapi/OVRLibraryInternal;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    sget-object v3, Lcom/oculus/library/model/AppStatus;->INSTALLED:Lcom/oculus/library/model/AppStatus;

    if-ne v2, v3, :cond_0

    .line 69
    invoke-direct {p0, v0}, Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;->showAppDetails(Lcom/oculus/library/model/App;)V

    .line 75
    :goto_0
    invoke-static {v1}, Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;->animateView(Landroid/view/View;)V

    .line 77
    return-object v1

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/obe/YouAreReadyLaunchingFragment;->hideAppDetails()V

    goto :goto_0
.end method
