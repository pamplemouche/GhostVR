.class public Lcom/oculus/horizon/nux360/Nux360CubemapView;
.super Lcom/oculus/horizon/cubemaps/Photo360View;
.source "Nux360CubemapView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/nux360/Nux360CubemapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/horizon/nux360/Nux360CubemapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/horizon/cubemaps/Photo360View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public handleOnReadyForRendering()V
    .locals 4

    .prologue
    .line 50
    invoke-super {p0}, Lcom/oculus/horizon/cubemaps/Photo360View;->handleOnReadyForRendering()V

    .line 51
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360CubemapView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 52
    return-void
.end method

.method public initializeNuxCubemap(III)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 33
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "res"

    .line 35
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/oculus/horizon/nux360/Nux360CubemapView;->initializeNuxCubemap(Ljava/lang/String;II)V

    .line 39
    return-void
.end method

.method public initializeNuxCubemap(Ljava/lang/String;II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/nux360/Nux360CubemapView;->setAlpha(F)V

    .line 43
    new-instance v0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;

    invoke-direct {v0}, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;-><init>()V

    .line 44
    new-instance v1, Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;

    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, p2, p3}, Landroid/util/Size;-><init>(II)V

    const-string v3, ""

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;-><init>(Ljava/lang/String;Landroid/util/Size;Ljava/lang/String;Landroid/util/Size;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;->setCubemapUris(Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;)Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;

    .line 45
    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;->build()Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;

    move-result-object v0

    invoke-virtual {p0, v4, v0, p1}, Lcom/oculus/horizon/nux360/Nux360CubemapView;->initialize(Ljava/lang/String;Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;Ljava/lang/String;)V

    .line 46
    return-void
.end method
