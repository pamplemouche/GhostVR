.class public Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "ProfilePictureFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/oculus/horizon/common/BackPressListener;
.implements Lcom/oculus/horizon/modal/AlertDialogFragment$OnCancelListener;
.implements Lcom/oculus/horizon/modal/AlertDialogFragment$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackFinishes:Z

.field private mBackgroundTintView:Landroid/view/View;

.field private mBlackBackground:Landroid/graphics/drawable/Drawable;

.field private mBottomNavHelper:Lcom/oculus/horizon/main/BottomNavHelper;

.field private mCameraBitmapHelper:Lcom/oculus/horizon/camera/bitmap/CameraBitmapHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCameraManager:Lcom/oculus/horizon/camera/CameraManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mConfirmCropListener:Landroid/view/View$OnClickListener;

.field private mConfirmationBackground:Landroid/widget/ImageView;

.field private mCropView:Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;

.field private mCurrentMode:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

.field private mDarkOverlay:Landroid/view/View;

.field private mFlashOverlay:Landroid/view/View;

.field private final mFlipCameraListener:Landroid/view/View$OnClickListener;

.field private mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mGoToTakePictureListener:Landroid/view/View$OnClickListener;

.field private mIsInNux:Z

.field private mLastMode:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

.field private mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNeedToShowPermissionDialogOnResume:Z

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOverlayCircle:Landroid/view/View;

.field private mPickControllerLazy:Lcom/facebook/inject/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/oculus/horizon/util/images/PicturePickController;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPrimaryButton:Landroid/view/View;

.field private mProfilePictureBitmap:Landroid/graphics/Bitmap;

.field private mProfilePictureFileHelper:Lcom/oculus/horizon/camera/ProfilePictureFileHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mProfilePicturePreview:Landroid/widget/ImageView;

.field private mRetakePictureButton:Landroid/widget/TextView;

.field private mSecondaryButton:Landroid/view/View;

.field private mTakePictureControls:Landroid/view/View;

.field private final mTakePictureListener:Landroid/view/View$OnClickListener;

.field private mTextureView:Landroid/view/TextureView;

.field private mUsePictureControls:Landroid/view/View;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V
    .locals 1

    .prologue
    .line 70
    invoke-static {p0}, Lcom/oculus/horizon/camera/bitmap/CameraBitmapHelper;->$ul_$xXXcom_oculus_horizon_camera_bitmap_CameraBitmapHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/camera/bitmap/CameraBitmapHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCameraBitmapHelper:Lcom/oculus/horizon/camera/bitmap/CameraBitmapHelper;

    invoke-static {p0}, Lcom/oculus/horizon/camera/CameraManager;->$ul_$xXXcom_oculus_horizon_camera_CameraManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/camera/CameraManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCameraManager:Lcom/oculus/horizon/camera/CameraManager;

    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/MeManager;->$ul_$xXXcom_oculus_horizon_legacy_social_MeManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-static {p0}, Lcom/oculus/horizon/camera/CameraModule;->$ul_$xXXcom_oculus_horizon_camera_ProfilePictureFileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/camera/ProfilePictureFileHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mProfilePictureFileHelper:Lcom/oculus/horizon/camera/ProfilePictureFileHelper;

    invoke-static {p0}, Lcom/oculus/horizon/main/MainModule;->$ul_$xXXcom_oculus_horizon_fragmentfactory_FragmentFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    invoke-static {p0}, Lcom/oculus/horizon/util/images/PicturePickController;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_oculus_horizon_util_images_PicturePickController$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mPickControllerLazy:Lcom/facebook/inject/Lazy;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    .line 128
    new-instance v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$1;-><init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mFlipCameraListener:Landroid/view/View$OnClickListener;

    .line 140
    new-instance v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$2;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$2;-><init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mGoToTakePictureListener:Landroid/view/View$OnClickListener;

    .line 148
    new-instance v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$3;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$3;-><init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mTakePictureListener:Landroid/view/View$OnClickListener;

    .line 156
    new-instance v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$4;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$4;-><init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mConfirmCropListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)Landroid/view/TextureView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)Lcom/oculus/horizon/camera/CameraManager;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCameraManager:Lcom/oculus/horizon/camera/CameraManager;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->onProfilePictureSaved()V

    return-void
.end method

.method static synthetic access$1200(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->navigateToDestination()V

    return-void
.end method

.method static synthetic access$1300(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)Lcom/oculus/horizon/legacy/social/MeManager;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->setDisplayMode(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->onTakePictureButtonClick()V

    return-void
.end method

.method static synthetic access$400(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->onConfirmCropButtonClick()V

    return-void
.end method

.method static synthetic access$500(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->onRetakePictureButtonClick()V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->onChoosePictureButtonClick()V

    return-void
.end method

.method static synthetic access$700(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->onUsePictureButtonClick()V

    return-void
.end method

.method static synthetic access$800(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mProfilePicturePreview:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mFlashOverlay:Landroid/view/View;

    return-object v0
.end method

.method private animateProfilePictureIn()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 418
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f5eb852    # 0.87f

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->getProfilePictureScaleAnimator(FF)Landroid/animation/Animator;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mFlashOverlay:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v6, [F

    fill-array-data v3, :array_0

    .line 421
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 423
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mProfilePicturePreview:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 425
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 426
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    aput-object v2, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 427
    new-instance v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$10;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$10;-><init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 449
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 450
    return-void

    .line 420
    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data

    .line 423
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateProfilePictureOut()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 556
    const v0, 0x3f5eb852    # 0.87f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->getProfilePictureScaleAnimator(FF)Landroid/animation/Animator;

    move-result-object v0

    .line 557
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mProfilePicturePreview:Landroid/widget/ImageView;

    const-string v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 558
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 559
    new-array v3, v4, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 560
    new-instance v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$13;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$13;-><init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 576
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 577
    return-void

    .line 557
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private cropPicture(Landroid/net/Uri;)V
    .locals 5

    .prologue
    .line 344
    sget-object v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;->CROP_PICTURE:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->setDisplayMode(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;)V

    .line 345
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mOverlayCircle:Landroid/view/View;

    .line 347
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mOverlayCircle:Landroid/view/View;

    .line 348
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mOverlayCircle:Landroid/view/View;

    .line 349
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mOverlayCircle:Landroid/view/View;

    .line 350
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 351
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCropView:Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;

    new-instance v2, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$9;

    invoke-direct {v2, p0, v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$9;-><init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;Landroid/graphics/RectF;)V

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->setBoundsDelegate(Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsDelegate;)V

    .line 359
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/imagepipeline/common/ResizeOptions;

    .line 362
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 363
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v1, v2, v3}, Lcom/facebook/imagepipeline/common/ResizeOptions;-><init>(II)V

    .line 360
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setResizeOptions(Lcom/facebook/imagepipeline/common/ResizeOptions;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCropView:Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->setImageRequest(Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 366
    return-void
.end method

.method private getProfilePictureScaleAnimator(FF)Landroid/animation/Animator;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 453
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 455
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mProfilePicturePreview:Landroid/widget/ImageView;

    const-string v2, "scaleX"

    new-array v3, v7, [F

    aput p1, v3, v5

    aput p2, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 456
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 458
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mProfilePicturePreview:Landroid/widget/ImageView;

    const-string v3, "scaleY"

    new-array v4, v7, [F

    aput p1, v4, v5

    aput p2, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 459
    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 461
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 462
    new-array v3, v7, [Landroid/animation/Animator;

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 463
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 464
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 466
    return-object v0
.end method

.method private hasCameraPermission()Z
    .locals 2

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCameraPermissionGranted([Ljava/lang/String;[I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 757
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 758
    const-string v2, "android.permission.CAMERA"

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 759
    aget v0, p2, v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    .line 762
    :cond_0
    return v1

    .line 757
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private navigateToDestination()V
    .locals 1

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mBackFinishes:Z

    if-eqz v0, :cond_1

    .line 520
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 521
    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->navigateToMe()V

    goto :goto_0
.end method

.method private navigateToMe()V
    .locals 3

    .prologue
    .line 530
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    .line 531
    invoke-virtual {v2}, Lcom/oculus/horizon/legacy/social/MeManager;->me()Lcom/oculus/horizon/api/common/user/User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newProfileFragment(Landroid/os/Parcelable;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 532
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->makeTopLevel()Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 533
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 534
    return-void
.end method

.method private onCameraPermissionBlockedClick(I)V
    .locals 1

    .prologue
    .line 728
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 729
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/util/RuntimePermissionsUtil;->launchAppDetailsSettings(Landroid/content/Context;)V

    .line 735
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 736
    return-void
.end method

.method private onCameraPermissionRationaleClick(I)V
    .locals 1

    .prologue
    .line 739
    packed-switch p1, :pswitch_data_0

    .line 748
    :goto_0
    return-void

    .line 741
    :pswitch_0
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->requestCameraPermission()V

    goto :goto_0

    .line 745
    :pswitch_1
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 739
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onChoosePictureButtonClick()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 391
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mPickControllerLazy:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/util/images/PicturePickController;

    invoke-virtual {v0, v2, p0}, Lcom/oculus/horizon/util/images/PicturePickController;->startPicturePickActivity(ILandroidx/fragment/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    sget-object v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->TAG:Ljava/lang/String;

    const-string v1, "Unable to start a media-picker."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->camera_media_gallery_error:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 395
    :cond_0
    return-void
.end method

.method private onConfirmCropButtonClick()V
    .locals 3

    .prologue
    .line 543
    sget-object v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;->USE_PICTURE:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->setDisplayMode(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;)V

    .line 544
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCameraBitmapHelper:Lcom/oculus/horizon/camera/bitmap/CameraBitmapHelper;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCropView:Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;

    .line 546
    invoke-virtual {v1}, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCropView:Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;

    invoke-virtual {v2}, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 545
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/camera/bitmap/CameraBitmapHelper;->getProfilePictureFromCropFlow(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mProfilePictureBitmap:Landroid/graphics/Bitmap;

    .line 548
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mConfirmationBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mBlackBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 549
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mProfilePicturePreview:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCameraBitmapHelper:Lcom/oculus/horizon/camera/bitmap/CameraBitmapHelper;

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mProfilePictureBitmap:Landroid/graphics/Bitmap;

    .line 550
    invoke-virtual {v1, v2}, Lcom/oculus/horizon/camera/bitmap/CameraBitmapHelper;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 549
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 552
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->animateProfilePictureIn()V

    .line 553
    return-void
.end method

.method private onProfilePictureSaved()V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-boolean v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mIsInNux:Z

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportProfilePictureChanged(Z)V

    .line 491
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mProfilePictureFileHelper:Lcom/oculus/horizon/camera/ProfilePictureFileHelper;

    new-instance v1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$12;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$12;-><init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->startUploadProfilePictureAndDeleteAfterwards(Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 510
    return-void
.end method

.method private onRetakePictureButtonClick()V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mLastMode:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->setDisplayMode(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;)V

    .line 539
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->animateProfilePictureOut()V

    .line 540
    return-void
.end method

.method private onTakePictureButtonClick()V
    .locals 3

    .prologue
    .line 398
    sget-object v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;->USE_PICTURE:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->setDisplayMode(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;)V

    .line 400
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCameraBitmapHelper:Lcom/oculus/horizon/camera/bitmap/CameraBitmapHelper;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mTextureView:Landroid/view/TextureView;

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCameraManager:Lcom/oculus/horizon/camera/CameraManager;

    .line 401
    invoke-virtual {v2}, Lcom/oculus/horizon/camera/CameraManager;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/camera/bitmap/CameraBitmapHelper;->getPreviewBitmap(Landroid/view/TextureView;Landroid/hardware/Camera$Size;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 403
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCameraBitmapHelper:Lcom/oculus/horizon/camera/bitmap/CameraBitmapHelper;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/camera/bitmap/CameraBitmapHelper;->getBlurredBitmapForCamera(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 405
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCameraBitmapHelper:Lcom/oculus/horizon/camera/bitmap/CameraBitmapHelper;

    invoke-virtual {v2, v0}, Lcom/oculus/horizon/camera/bitmap/CameraBitmapHelper;->getProfilePictureBitmapFromCamera(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mProfilePictureBitmap:Landroid/graphics/Bitmap;

    .line 407
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 409
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mConfirmationBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 410
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mProfilePicturePreview:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCameraBitmapHelper:Lcom/oculus/horizon/camera/bitmap/CameraBitmapHelper;

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mProfilePictureBitmap:Landroid/graphics/Bitmap;

    .line 411
    invoke-virtual {v1, v2}, Lcom/oculus/horizon/camera/bitmap/CameraBitmapHelper;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 410
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 413
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->animateProfilePictureIn()V

    .line 414
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-boolean v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mIsInNux:Z

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportCameraPhotoTaken(Z)V

    .line 415
    return-void
.end method

.method private onUsePictureButtonClick()V
    .locals 3

    .prologue
    .line 470
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mProfilePictureFileHelper:Lcom/oculus/horizon/camera/ProfilePictureFileHelper;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mProfilePictureBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$11;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$11;-><init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/camera/ProfilePictureFileHelper;->startSaveProfilePicture(Landroid/graphics/Bitmap;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 487
    return-void
.end method

.method private requestCameraPermission()V
    .locals 3

    .prologue
    .line 653
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->requestPermissions([Ljava/lang/String;I)V

    .line 654
    return-void
.end method

.method private setDisplayMode(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x4

    const/4 v0, 0x0

    .line 580
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCurrentMode:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    iput-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mLastMode:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    .line 581
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCurrentMode:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    .line 582
    sget-object v2, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$14;->$SwitchMap$com$oculus$horizon$legacy$social$fragments$ProfilePictureFragment$DisplayMode:[I

    invoke-virtual {p1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 645
    :goto_0
    return-void

    .line 584
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v4}, Landroid/view/TextureView;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCropView:Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;

    invoke-virtual {v0, v4}, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mTakePictureControls:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mUsePictureControls:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 588
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->requestCameraPermission()V

    goto :goto_0

    .line 591
    :pswitch_1
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->hasCameraPermission()Z

    move-result v2

    if-nez v2, :cond_0

    .line 592
    sget-object v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;->NEED_CAMERA_PERMISSION:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->setDisplayMode(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;)V

    goto :goto_0

    .line 595
    :cond_0
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v0}, Landroid/view/TextureView;->setVisibility(I)V

    .line 596
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCropView:Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;

    invoke-virtual {v2, v1}, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->setVisibility(I)V

    .line 598
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mDarkOverlay:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 599
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mConfirmationBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 600
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mBackgroundTintView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 602
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mTakePictureControls:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 603
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mPrimaryButton:Landroid/view/View;

    sget v3, Lcom/oculus/horizon/R$drawable;->profile_picture_take_picture:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 604
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mPrimaryButton:Landroid/view/View;

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mTakePictureListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 605
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mSecondaryButton:Landroid/view/View;

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCameraManager:Lcom/oculus/horizon/camera/CameraManager;

    .line 606
    invoke-virtual {v3}, Lcom/oculus/horizon/camera/CameraManager;->hasBothCameras()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 605
    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 607
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mSecondaryButton:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$drawable;->profile_picture_flip_camera:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 608
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mSecondaryButton:Landroid/view/View;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mFlipCameraListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mUsePictureControls:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 606
    goto :goto_1

    .line 613
    :pswitch_2
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 614
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCropView:Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;

    invoke-virtual {v2, v0}, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->setVisibility(I)V

    .line 616
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mDarkOverlay:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 617
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mConfirmationBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 618
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mBackgroundTintView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 620
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mTakePictureControls:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 621
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mPrimaryButton:Landroid/view/View;

    sget v2, Lcom/oculus/horizon/R$drawable;->profile_picture_confirm_crop:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 622
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mPrimaryButton:Landroid/view/View;

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mConfirmCropListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mSecondaryButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 624
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mSecondaryButton:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$drawable;->profile_picture_camera_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 625
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mSecondaryButton:Landroid/view/View;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mGoToTakePictureListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mUsePictureControls:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 630
    :pswitch_3
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 631
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCropView:Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;

    invoke-virtual {v2, v1}, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;->setVisibility(I)V

    .line 633
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mDarkOverlay:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 634
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mConfirmationBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 635
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mBackgroundTintView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 637
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mRetakePictureButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mLastMode:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    sget-object v3, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;->CROP_PICTURE:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    if-ne v1, v3, :cond_2

    sget v1, Lcom/oculus/horizon/R$string;->camera_choose_other:I

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 641
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mTakePictureControls:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 642
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mUsePictureControls:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 637
    :cond_2
    sget v1, Lcom/oculus/horizon/R$string;->camera_take_again:I

    goto :goto_2

    .line 582
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPermissionBlockedDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 692
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/oculus/horizon/R$string;->common_permission_title:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 693
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->camera_permission_blocked_message:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 694
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_ok:I

    .line 695
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_cancel:I

    .line 696
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setNegativeButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 697
    invoke-virtual {v0, p0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTargetFragment(Landroidx/fragment/app/Fragment;I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    .line 698
    invoke-virtual {v0}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->build()Lcom/oculus/horizon/modal/AlertDialogFragment;

    move-result-object v0

    .line 699
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "camera_permission_blocked_modal_fragment"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method private showPermissionDialog()V
    .locals 2

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    .line 682
    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 684
    :goto_0
    if-eqz v0, :cond_1

    .line 685
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->showPermissionBlockedDialog()V

    .line 689
    :goto_1
    return-void

    .line 682
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 687
    :cond_1
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->showPermissionRationaleDialog()V

    goto :goto_1
.end method

.method private showPermissionRationaleDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 703
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/oculus/horizon/R$string;->common_permission_title:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 704
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->camera_permission_message:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 705
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_retry:I

    .line 706
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_cancel:I

    .line 707
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setNegativeButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 708
    invoke-virtual {v0, p0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTargetFragment(Landroidx/fragment/app/Fragment;I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    .line 709
    invoke-virtual {v0}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->build()Lcom/oculus/horizon/modal/AlertDialogFragment;

    move-result-object v0

    .line 710
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "camera_permission_rationale_modal_fragment"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 711
    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 385
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SOCIAL_CAMERA:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 333
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/horizon/base/OculusBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 334
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mPickControllerLazy:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/util/images/PicturePickController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/horizon/util/images/PicturePickController;->onActivityResult(IILandroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    .line 335
    if-eqz v0, :cond_0

    .line 336
    invoke-direct {p0, v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->cropPicture(Landroid/net/Uri;)V

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->navigateToDestination()V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 370
    iget-boolean v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mBackFinishes:Z

    if-eqz v1, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 378
    :goto_0
    return v0

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCurrentMode:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    sget-object v2, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;->USE_PICTURE:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mLastMode:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    if-eqz v1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mLastMode:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    invoke-direct {p0, v1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->setDisplayMode(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;)V

    .line 375
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->animateProfilePictureOut()V

    goto :goto_0

    .line 378
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancel(Lcom/oculus/horizon/modal/AlertDialogFragment;I)V
    .locals 1

    .prologue
    .line 753
    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->onClick(Lcom/oculus/horizon/modal/AlertDialogFragment;II)V

    .line 754
    return-void
.end method

.method public onClick(Lcom/oculus/horizon/modal/AlertDialogFragment;II)V
    .locals 0

    .prologue
    .line 716
    invoke-virtual {p1}, Lcom/oculus/horizon/modal/AlertDialogFragment;->dismissAllowingStateLoss()V

    .line 717
    packed-switch p2, :pswitch_data_0

    .line 725
    :goto_0
    return-void

    .line 719
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->onCameraPermissionRationaleClick(I)V

    goto :goto_0

    .line 722
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->onCameraPermissionBlockedClick(I)V

    goto :goto_0

    .line 717
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 201
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V

    .line 204
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_skip_roadblocks"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mIsInNux:Z

    .line 205
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_fragment_arg_back_finishes"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mBackFinishes:Z

    .line 207
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCameraManager:Lcom/oculus/horizon/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/camera/CameraManager;->init(Landroid/view/WindowManager;)V

    .line 208
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 212
    sget v0, Lcom/oculus/horizon/R$layout;->profile_picture_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 311
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onDestroyView()V

    .line 312
    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mDarkOverlay:Landroid/view/View;

    .line 313
    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mFlashOverlay:Landroid/view/View;

    .line 314
    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mOverlayCircle:Landroid/view/View;

    .line 315
    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mTextureView:Landroid/view/TextureView;

    .line 316
    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mBackgroundTintView:Landroid/view/View;

    .line 317
    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCropView:Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;

    .line 318
    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mUsePictureControls:Landroid/view/View;

    .line 319
    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mTakePictureControls:Landroid/view/View;

    .line 320
    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mRetakePictureButton:Landroid/widget/TextView;

    .line 321
    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mProfilePicturePreview:Landroid/widget/ImageView;

    .line 322
    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mPrimaryButton:Landroid/view/View;

    .line 323
    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mSecondaryButton:Landroid/view/View;

    .line 324
    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mConfirmationBackground:Landroid/widget/ImageView;

    .line 326
    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mBlackBackground:Landroid/graphics/drawable/Drawable;

    .line 328
    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mProfilePictureBitmap:Landroid/graphics/Bitmap;

    .line 329
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 302
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onPause()V

    .line 305
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mBottomNavHelper:Lcom/oculus/horizon/main/BottomNavHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/main/BottomNavHelper;->setVisibility(I)V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mBottomNavHelper:Lcom/oculus/horizon/main/BottomNavHelper;

    .line 307
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 660
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 678
    :goto_0
    return-void

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCurrentMode:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    sget-object v2, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;->NEED_CAMERA_PERMISSION:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 667
    invoke-direct {p0, p2, p3}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->isCameraPermissionGranted([Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 669
    sget-object v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;->TAKE_PICTURE:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->setDisplayMode(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;)V

    goto :goto_0

    .line 665
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 677
    :cond_2
    iput-boolean v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mNeedToShowPermissionDialogOnResume:Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 281
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 283
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->me()Lcom/oculus/horizon/api/common/user/User;

    move-result-object v1

    .line 284
    const-string v0, "Cannot use this fragment without a logged user"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/main/MainActivity;

    .line 287
    sget-object v2, Lcom/oculus/horizon/mainnavigation/NavItem;->PROFILE:Lcom/oculus/horizon/mainnavigation/NavItem;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/user/User;->alias:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Lcom/oculus/horizon/main/MainActivity;->updateNavigation(Lcom/oculus/horizon/mainnavigation/NavItem;Ljava/lang/String;Z)V

    .line 290
    invoke-virtual {v0}, Lcom/oculus/horizon/main/MainActivity;->getBottomNavHelper()Lcom/oculus/horizon/main/BottomNavHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mBottomNavHelper:Lcom/oculus/horizon/main/BottomNavHelper;

    .line 291
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mBottomNavHelper:Lcom/oculus/horizon/main/BottomNavHelper;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/main/BottomNavHelper;->setVisibility(I)V

    .line 294
    iget-boolean v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mNeedToShowPermissionDialogOnResume:Z

    if-eqz v0, :cond_0

    .line 295
    iput-boolean v3, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mNeedToShowPermissionDialogOnResume:Z

    .line 296
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->showPermissionDialog()V

    .line 298
    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .prologue
    .line 769
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCameraManager:Lcom/oculus/horizon/camera/CameraManager;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/oculus/horizon/camera/CameraManager;->setupCamera(Landroid/view/TextureView;Landroid/graphics/SurfaceTexture;II)V

    .line 770
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCameraManager:Lcom/oculus/horizon/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/camera/CameraManager;->stopCamera()V

    .line 780
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 775
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 786
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 217
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 218
    sget v0, Lcom/oculus/horizon/R$id;->dark_overlay:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mDarkOverlay:Landroid/view/View;

    .line 219
    sget v0, Lcom/oculus/horizon/R$id;->flash_overlay:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mFlashOverlay:Landroid/view/View;

    .line 220
    sget v0, Lcom/oculus/horizon/R$id;->overlay_circle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mOverlayCircle:Landroid/view/View;

    .line 221
    sget v0, Lcom/oculus/horizon/R$id;->texture_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mTextureView:Landroid/view/TextureView;

    .line 222
    sget v0, Lcom/oculus/horizon/R$id;->background_tint:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mBackgroundTintView:Landroid/view/View;

    .line 223
    sget v0, Lcom/oculus/horizon/R$id;->crop_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mCropView:Lcom/oculus/horizon/legacy/social/view/FrescoTouchImageView;

    .line 224
    sget v0, Lcom/oculus/horizon/R$id;->use_picture_controls:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mUsePictureControls:Landroid/view/View;

    .line 225
    sget v0, Lcom/oculus/horizon/R$id;->take_picture_controls:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mTakePictureControls:Landroid/view/View;

    .line 226
    sget v0, Lcom/oculus/horizon/R$id;->retake_picture_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mRetakePictureButton:Landroid/widget/TextView;

    .line 227
    sget v0, Lcom/oculus/horizon/R$id;->profile_picture_preview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mProfilePicturePreview:Landroid/widget/ImageView;

    .line 229
    sget v0, Lcom/oculus/horizon/R$id;->primary_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mPrimaryButton:Landroid/view/View;

    .line 230
    sget v0, Lcom/oculus/horizon/R$id;->secondary_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mSecondaryButton:Landroid/view/View;

    .line 232
    sget v0, Lcom/oculus/horizon/R$id;->confirm_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mConfirmationBackground:Landroid/widget/ImageView;

    .line 234
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 235
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mTextureView:Landroid/view/TextureView;

    new-instance v1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$5;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$5;-><init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 244
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mRetakePictureButton:Landroid/widget/TextView;

    new-instance v1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$6;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$6;-><init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    sget v0, Lcom/oculus/horizon/R$id;->choose_picture:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 253
    new-instance v1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$7;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$7;-><init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    sget v0, Lcom/oculus/horizon/R$id;->use_picture_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 262
    new-instance v1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$8;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$8;-><init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$color;->oculus_black_8:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->mBlackBackground:Landroid/graphics/drawable/Drawable;

    .line 272
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "start_in_gallery"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->onChoosePictureButtonClick()V

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_0
    sget-object v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;->TAKE_PICTURE:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->setDisplayMode(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;)V

    goto :goto_0
.end method
