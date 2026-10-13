.class public final Lcom/oculus/vrshell/panels/AndroidPanelLayer;
.super Ljava/lang/Object;
.source "AndroidPanelLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;,
        Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;,
        Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;,
        Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;
    }
.end annotation


# static fields
.field public static final MAX_LAYER_HEIGHT:I = 0x3e8

.field public static final MAX_LAYER_WIDTH:I = 0x3e8

.field private static final MAX_POINTER_DELTA:F = 0.5f

.field private static final MIN_POINTER_DELTA:F = 1.0E-4f

.field static final PANEL_SHAPE_EQUIRECT_180:I = 0xd

.field static final PANEL_SHAPE_EQUIRECT_360:I = 0xc

.field static final PANEL_SHAPE_FLAT:I = 0x1

.field static final PANEL_SHAPE_HIDDEN:I = 0x0

.field static final PANEL_SHAPE_LANDSCAPE_CYLINDER:I = 0x2

.field static final PANEL_SHAPE_PORTRAIT_CYLINDER:I = 0x3

.field static final PANEL_SHAPE_SCREEN:I = 0xe

.field private static final SCROLLING_DECREASE_FACTOR:F = 0.96f

.field private static final SCROLLING_SCALE:F = 0.01f

.field private static final TAG:Ljava/lang/String;

.field public static final THUMBSTICK_SCROLL_FACTOR:F = 0.25f

.field public static final TOUCH_SCROLL_THRESHOLD:F = 50.0f


# instance fields
.field private mContentView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mContextWrapper:Landroid/content/Context;

.field private mCurrentSizeRequestVersion:J

.field private mDensity:F

.field private mHeight:I

.field private mIsScrollingX:Z

.field private mIsScrollingY:Z

.field private mLastButtons:J

.field private mLastCursorX:F

.field private mLastCursorY:F

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mNeedsToBeShownOnResume:Z

.field private mNeedsToBeShownOnShellTokenReady:Z

.field private mPendingSizeRequestVersion:J

.field private mPointerForwarder:Lcom/oculus/vrshell/panels/PointerForwarder;

.field private mPosX:F

.field private mPosY:F

.field private mPosZ:F

.field private mPresentation:Landroid/app/Presentation;

.field private mRadius:F

.field private mRotX:F

.field private mRotY:F

.field private mRotZ:F

.field private mShellToken:Landroid/os/IBinder;

.field private mSmoothPointerDx:F

.field private mSmoothPointerDy:F

.field private mSpec:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

.field private mSupersampled:Z

.field private final mSurface:Landroid/view/Surface;

.field private mSystemPositioned:Z

.field private mTouchOriginX:F

.field private mTouchOriginY:F

.field private mUsesLayerTransform:Z

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field private mVirtualDisplayName:Ljava/lang/String;

.field private mWidth:I

.field private mWindowManager:Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Surface;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;)V
    .locals 2

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 884
    iput v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mLastCursorX:F

    .line 885
    iput v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mLastCursorY:F

    const/4 v0, 0x0

    .line 897
    iput-boolean v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mNeedsToBeShownOnShellTokenReady:Z

    .line 900
    iput-boolean v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mNeedsToBeShownOnResume:Z

    const-wide/16 v0, 0x0

    .line 903
    iput-wide v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPendingSizeRequestVersion:J

    .line 904
    iput-wide v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mCurrentSizeRequestVersion:J

    .line 244
    iput-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mContext:Landroid/content/Context;

    .line 245
    iput-object p2, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mSurface:Landroid/view/Surface;

    .line 246
    invoke-virtual {p0, p3}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->setSpec(Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/vrshell/panels/AndroidPanelLayer;)Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mWindowManager:Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oculus/vrshell/panels/AndroidPanelLayer;)Landroid/view/LayoutInflater;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method private createPresentation()V
    .locals 12

    .line 619
    sget-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 623
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget v2, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "Creating presentation for layer \"%s\" with width %d and height %d"

    .line 621
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 619
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mContext:Landroid/content/Context;

    const-string v1, "display"

    .line 626
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/hardware/display/DisplayManager;

    .line 633
    iget-object v6, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mVirtualDisplayName:Ljava/lang/String;

    iget v7, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mWidth:I

    iget v8, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mHeight:I

    const/16 v9, 0xa0

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 634
    invoke-virtual/range {v5 .. v11}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 639
    new-instance v0, Landroid/app/Presentation;

    iget-object v1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v5, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mSpec:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    iget v5, v5, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->themeResourceId:I

    invoke-direct {v0, v1, v2, v5}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    iput-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPresentation:Landroid/app/Presentation;

    .line 643
    invoke-direct {p0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->wrapPresentationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mContextWrapper:Landroid/content/Context;

    .line 644
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;

    iget-object v1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPresentation:Landroid/app/Presentation;

    .line 646
    invoke-virtual {v1}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-direct {v0, v1}, Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;-><init>(Landroid/view/WindowManager;)V

    iput-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mWindowManager:Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;

    .line 647
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPresentation:Landroid/app/Presentation;

    .line 648
    invoke-virtual {v0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mContextWrapper:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 651
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 654
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 660
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x7ee

    .line 668
    :goto_0
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setType(I)V

    return-void
.end method

.method private destroyPresentation()V
    .locals 4

    .line 672
    sget-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 676
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "Destroying presentation for layer \"%s\" with width %d and height %d"

    .line 674
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 672
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPresentation:Landroid/app/Presentation;

    if-eqz v0, :cond_0

    .line 679
    invoke-virtual {v0}, Landroid/app/Presentation;->dismiss()V

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_1

    .line 683
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    :cond_1
    const/4 v0, 0x0

    .line 686
    iput-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPresentation:Landroid/app/Presentation;

    .line 687
    iput-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-void
.end method

.method private dispatchMotionEvents(FFFFJJ)V
    .locals 12

    move-object v7, p0

    move-wide/from16 v8, p5

    .line 696
    iget-object v0, v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPointerForwarder:Lcom/oculus/vrshell/panels/PointerForwarder;

    if-nez v0, :cond_0

    return-void

    .line 700
    :cond_0
    sget-object v0, Lcom/oculus/vrshell/panels/PanelFlags;->GAZE_VALID:Lcom/oculus/vrshell/panels/PanelFlags;

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/PanelFlags;->getFlagValue()J

    move-result-wide v0

    and-long v0, p7, v0

    const-wide/16 v2, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, -0x40800000    # -1.0f

    goto :goto_0

    :cond_1
    move v10, p1

    move v11, p2

    :goto_0
    move-object v0, p0

    move-wide/from16 v1, p5

    move v3, v10

    move v4, v11

    move v5, p3

    move/from16 v6, p4

    .line 708
    invoke-direct/range {v0 .. v6}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->handleJoystickScrollInputEvents(JFFFF)V

    .line 709
    invoke-direct/range {v0 .. v6}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->handleTouchScrollInputEvents(JFFFF)V

    .line 710
    invoke-direct {p0, v8, v9, v10, v11}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->handleClickInputEvents(JFF)V

    .line 714
    invoke-direct {p0, v10, v11}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->handleHoverEvents(FF)V

    .line 716
    iput v10, v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mLastCursorX:F

    .line 717
    iput v11, v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mLastCursorY:F

    move v0, p3

    .line 718
    iput v0, v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mLastTouchX:F

    move/from16 v0, p4

    .line 719
    iput v0, v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mLastTouchY:F

    .line 720
    iput-wide v8, v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mLastButtons:J

    return-void
.end method

.method private static getAutoScrollingDelta(F)F
    .locals 2

    const v0, 0x3f75c28f    # 0.96f

    mul-float p0, p0, v0

    .line 805
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method private static getSmoothPointerDelta(FF)F
    .locals 1

    const v0, 0x3c23d70a    # 0.01f

    mul-float p1, p1, v0

    add-float/2addr p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    .line 814
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x38d1b717    # 1.0E-4f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    .line 817
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 p1, -0x41000000    # -0.5f

    .line 818
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private handleClickInputEvents(JFF)V
    .locals 10

    .line 742
    invoke-static {}, Lcom/oculus/vrshell/panels/PanelButton;->getAnyActionFlagValue()J

    move-result-wide v0

    and-long/2addr v0, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 743
    :goto_0
    iget-wide v6, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mLastButtons:J

    .line 744
    invoke-static {}, Lcom/oculus/vrshell/panels/PanelButton;->getAnyActionFlagValue()J

    move-result-wide v8

    and-long/2addr v6, v8

    cmp-long v1, v6, v4

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 748
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->onPointerUpdate(JFF)V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 750
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->onPointerDown(JFF)V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    .line 752
    invoke-direct {p0, p1, p2}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->onPointerUp(J)V

    :cond_4
    :goto_2
    return-void
.end method

.method private handleHoverEvents(FF)V
    .locals 3

    .line 725
    invoke-direct {p0, p1, p2}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->insideLayer(FF)Z

    move-result v0

    .line 727
    iget v1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mLastCursorX:F

    iget v2, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mLastCursorY:F

    invoke-direct {p0, v1, v2}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->insideLayer(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPointerForwarder:Lcom/oculus/vrshell/panels/PointerForwarder;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/vrshell/panels/PointerForwarder;->hoverMove(FF)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 734
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPointerForwarder:Lcom/oculus/vrshell/panels/PointerForwarder;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/vrshell/panels/PointerForwarder;->hoverEnter(FF)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 737
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPointerForwarder:Lcom/oculus/vrshell/panels/PointerForwarder;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/vrshell/panels/PointerForwarder;->hoverExit(FF)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleJoystickScrollInputEvents(JFFFF)V
    .locals 6

    .line 759
    iget-wide v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mLastButtons:J

    sget-object v2, Lcom/oculus/vrshell/panels/PanelButton;->JOYSTICK_MOVE:Lcom/oculus/vrshell/panels/PanelButton;

    invoke-virtual {v2}, Lcom/oculus/vrshell/panels/PanelButton;->getFlagValue()J

    move-result-wide v4

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->isButtonPressing(JJJ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 760
    iget-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPointerForwarder:Lcom/oculus/vrshell/panels/PointerForwarder;

    const/high16 p2, 0x3e800000    # 0.25f

    mul-float p5, p5, p2

    mul-float p6, p6, p2

    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/oculus/vrshell/panels/PointerForwarder;->touchScroll(FFFF)V

    :cond_0
    return-void
.end method

.method private handleTouchScrollInputEvents(JFFFF)V
    .locals 13

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    .line 768
    invoke-static {}, Lcom/oculus/vrshell/panels/PanelButton;->getClickOrTriggerFlagValue()J

    move-result-wide v5

    and-long/2addr v5, p1

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_8

    .line 770
    iget-wide v7, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mLastButtons:J

    sget-object v5, Lcom/oculus/vrshell/panels/PanelButton;->TOUCH:Lcom/oculus/vrshell/panels/PanelButton;

    invoke-virtual {v5}, Lcom/oculus/vrshell/panels/PanelButton;->getFlagValue()J

    move-result-wide v11

    move-wide v9, p1

    invoke-static/range {v7 .. v12}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->isButtonPressed(JJJ)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    iget-wide v7, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mLastButtons:J

    sget-object v5, Lcom/oculus/vrshell/panels/PanelButton;->REMOTE_TOUCH:Lcom/oculus/vrshell/panels/PanelButton;

    .line 771
    invoke-virtual {v5}, Lcom/oculus/vrshell/panels/PanelButton;->getFlagValue()J

    move-result-wide v11

    move-wide v9, p1

    invoke-static/range {v7 .. v12}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->isButtonPressed(JJJ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 772
    :cond_0
    iput v3, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mTouchOriginX:F

    .line 773
    iput v4, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mTouchOriginY:F

    .line 774
    iput-boolean v6, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mIsScrollingY:Z

    iput-boolean v6, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mIsScrollingX:Z

    .line 778
    :cond_1
    iget-wide v7, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mLastButtons:J

    sget-object v5, Lcom/oculus/vrshell/panels/PanelButton;->TOUCH:Lcom/oculus/vrshell/panels/PanelButton;

    invoke-virtual {v5}, Lcom/oculus/vrshell/panels/PanelButton;->getFlagValue()J

    move-result-wide v11

    move-wide v9, p1

    invoke-static/range {v7 .. v12}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->isButtonPressing(JJJ)Z

    move-result v5

    if-nez v5, :cond_2

    iget-wide v7, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mLastButtons:J

    sget-object v5, Lcom/oculus/vrshell/panels/PanelButton;->REMOTE_TOUCH:Lcom/oculus/vrshell/panels/PanelButton;

    .line 779
    invoke-virtual {v5}, Lcom/oculus/vrshell/panels/PanelButton;->getFlagValue()J

    move-result-wide v11

    move-wide v9, p1

    invoke-static/range {v7 .. v12}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->isButtonPressing(JJJ)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 780
    :cond_2
    iget-boolean v5, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mIsScrollingX:Z

    iget v7, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mTouchOriginX:F

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/4 v8, 0x1

    const/high16 v9, 0x42480000    # 50.0f

    cmpl-float v7, v7, v9

    if-lez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    or-int/2addr v5, v7

    iput-boolean v5, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mIsScrollingX:Z

    .line 781
    iget-boolean v5, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mIsScrollingY:Z

    iget v7, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mTouchOriginY:F

    sub-float v7, v4, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v9

    if-lez v7, :cond_4

    const/4 v6, 0x1

    :cond_4
    or-int/2addr v5, v6

    iput-boolean v5, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mIsScrollingY:Z

    .line 783
    iget-boolean v5, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mIsScrollingY:Z

    if-eqz v5, :cond_5

    .line 784
    iget v5, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mSmoothPointerDy:F

    iget v6, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mLastTouchY:F

    sub-float/2addr v4, v6

    invoke-static {v5, v4}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getSmoothPointerDelta(FF)F

    move-result v4

    iput v4, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mSmoothPointerDy:F

    .line 786
    :cond_5
    iget-boolean v4, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mIsScrollingX:Z

    if-eqz v4, :cond_6

    .line 787
    iget v4, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mSmoothPointerDx:F

    iget v5, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mLastTouchX:F

    sub-float/2addr v3, v5

    invoke-static {v4, v3}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getSmoothPointerDelta(FF)F

    move-result v3

    iput v3, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mSmoothPointerDx:F

    .line 790
    :cond_6
    iget v3, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mSmoothPointerDy:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    .line 791
    iget v3, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mSmoothPointerDy:F

    invoke-static {v3}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getAutoScrollingDelta(F)F

    move-result v3

    iput v3, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mSmoothPointerDy:F

    .line 792
    iget-object v3, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPointerForwarder:Lcom/oculus/vrshell/panels/PointerForwarder;

    iget v5, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mSmoothPointerDy:F

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/oculus/vrshell/panels/PointerForwarder;->touchScroll(FFFF)V

    .line 794
    :cond_7
    iget v3, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mSmoothPointerDx:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    .line 795
    iget v3, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mSmoothPointerDx:F

    invoke-static {v3}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getAutoScrollingDelta(F)F

    move-result v3

    iput v3, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mSmoothPointerDx:F

    .line 796
    iget-object v3, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPointerForwarder:Lcom/oculus/vrshell/panels/PointerForwarder;

    iget v5, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mSmoothPointerDx:F

    invoke-virtual {v3, v1, v2, v5, v4}, Lcom/oculus/vrshell/panels/PointerForwarder;->touchScroll(FFFF)V

    :cond_8
    return-void
.end method

.method private insideLayer(FF)Z
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-ltz v1, :cond_0

    .line 844
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float p2, p2, v1

    if-gtz p2, :cond_0

    cmpl-float p2, p1, v0

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getWidth()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static isButtonPressed(JJJ)Z
    .locals 1

    and-long/2addr p2, p4

    cmp-long v0, p2, p4

    if-nez v0, :cond_0

    and-long/2addr p0, p4

    cmp-long p2, p0, p4

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isButtonPressing(JJJ)Z
    .locals 1

    and-long/2addr p2, p4

    cmp-long v0, p2, p4

    if-nez v0, :cond_0

    and-long/2addr p0, p4

    cmp-long p2, p0, p4

    if-nez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onPointerDown(JFF)V
    .locals 0

    .line 831
    iget-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPointerForwarder:Lcom/oculus/vrshell/panels/PointerForwarder;

    invoke-virtual {p1, p3, p4}, Lcom/oculus/vrshell/panels/PointerForwarder;->pointerPressed(FF)V

    return-void
.end method

.method private onPointerUp(J)V
    .locals 1

    .line 839
    iget-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPointerForwarder:Lcom/oculus/vrshell/panels/PointerForwarder;

    iget p2, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mLastCursorX:F

    iget v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mLastCursorY:F

    invoke-virtual {p1, p2, v0}, Lcom/oculus/vrshell/panels/PointerForwarder;->pointerReleased(FF)V

    return-void
.end method

.method private onPointerUpdate(JFF)V
    .locals 0

    .line 835
    iget-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPointerForwarder:Lcom/oculus/vrshell/panels/PointerForwarder;

    invoke-virtual {p1, p3, p4}, Lcom/oculus/vrshell/panels/PointerForwarder;->pointerDragged(FF)V

    return-void
.end method

.method private wrapPresentationContext()Landroid/content/Context;
    .locals 2

    .line 358
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$1;

    iget-object v1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v1}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$1;-><init>(Lcom/oculus/vrshell/panels/AndroidPanelLayer;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 408
    invoke-direct {p0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->destroyPresentation()V

    return-void
.end method

.method public frame()V
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    .line 396
    invoke-direct {p0, v0, v0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->handleHoverEvents(FF)V

    .line 398
    iput v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mLastCursorX:F

    .line 399
    iput v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mLastCursorY:F

    const-wide/16 v0, 0x0

    .line 401
    iput-wide v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mLastButtons:J

    const/4 v0, 0x0

    .line 403
    iput-boolean v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mIsScrollingX:Z

    .line 404
    iput-boolean v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mIsScrollingY:Z

    return-void
.end method

.method public frame(FFJJFFF)V
    .locals 10

    move-object v9, p0

    .line 384
    iget v0, v9, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mWidth:I

    int-to-float v0, v0

    mul-float v1, p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    iget v2, v9, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mHeight:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    move-object v0, p0

    move/from16 v3, p7

    move/from16 v4, p8

    move-wide v5, p3

    move-wide v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->dispatchMotionEvents(FFFFJJ)V

    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getDensity()F
    .locals 1

    .line 286
    iget v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mDensity:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 258
    iget v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mHeight:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mSpec:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    iget-object v0, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionX()F
    .locals 1

    .line 262
    iget v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPosX:F

    return v0
.end method

.method public getPositionY()F
    .locals 1

    .line 266
    iget v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPosY:F

    return v0
.end method

.method public getPositionZ()F
    .locals 1

    .line 270
    iget v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPosZ:F

    return v0
.end method

.method public getPresentationContext()Landroid/content/Context;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mContextWrapper:Landroid/content/Context;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    .line 290
    iget v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mRadius:F

    return v0
.end method

.method public getResizeBehavior()Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mSpec:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    iget-object v0, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->resizeBehavior:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    return-object v0
.end method

.method public getRotationX()F
    .locals 1

    .line 274
    iget v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mRotX:F

    return v0
.end method

.method public getRotationY()F
    .locals 1

    .line 278
    iget v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mRotY:F

    return v0
.end method

.method public getRotationZ()F
    .locals 1

    .line 282
    iget v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mRotZ:F

    return v0
.end method

.method public getShape()Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mSpec:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    iget-object v0, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->shape:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 254
    iget v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mWidth:I

    return v0
.end method

.method public hasPresentation()Z
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPresentation:Landroid/app/Presentation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hide()V
    .locals 3

    .line 427
    sget-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hiding layer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 431
    iput-boolean v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mNeedsToBeShownOnShellTokenReady:Z

    .line 433
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 434
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPresentation:Landroid/app/Presentation;

    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {v0}, Landroid/app/Presentation;->hide()V

    :cond_1
    return-void
.end method

.method public isHitTestable()Z
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mSpec:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    iget-object v0, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->hitTestingBehavior:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    sget-object v1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupersampled()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mSupersampled:Z

    return v0
.end method

.method public isSystemPositioned()Z
    .locals 1

    .line 294
    iget-boolean v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mSystemPositioned:Z

    return v0
.end method

.method public isUsingLayerTransform()Z
    .locals 1

    .line 303
    iget-boolean v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mUsesLayerTransform:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPresentation:Landroid/app/Presentation;

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v0}, Landroid/app/Presentation;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needsToBeShownOnShellTokenReady()Z
    .locals 1

    .line 539
    iget-boolean v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mNeedsToBeShownOnShellTokenReady:Z

    return v0
.end method

.method public needsToBeSized()Z
    .locals 5

    .line 550
    iget-wide v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPendingSizeRequestVersion:J

    iget-wide v2, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mCurrentSizeRequestVersion:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPanelSizeRequested()V
    .locals 4

    .line 601
    iget-wide v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPendingSizeRequestVersion:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPendingSizeRequestVersion:J

    return-void
.end method

.method public onPanelSizedResponse()V
    .locals 6

    .line 605
    iget-wide v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPendingSizeRequestVersion:J

    iget-wide v2, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mCurrentSizeRequestVersion:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mCurrentSizeRequestVersion:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mCurrentSizeRequestVersion:J

    .line 606
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public pausePresentation()V
    .locals 4

    .line 494
    sget-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 498
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "Pausing presentation for layer \"%s\" with width %d and height %d"

    .line 496
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 494
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->isVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mNeedsToBeShownOnResume:Z

    .line 503
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->hide()V

    .line 507
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 511
    :cond_0
    invoke-direct {p0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->destroyPresentation()V

    return-void
.end method

.method public resetPanelSizeRequestVersions()V
    .locals 2

    .line 615
    iget-wide v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPendingSizeRequestVersion:J

    iput-wide v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mCurrentSizeRequestVersion:J

    return-void
.end method

.method public resumePresentation()V
    .locals 5

    .line 516
    sget-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 520
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget v2, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "Resuming presentation for layer \"%s\" with width %d and height %d"

    .line 518
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 516
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPresentation:Landroid/app/Presentation;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    invoke-direct {p0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->createPresentation()V

    .line 528
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->setContentView(Landroid/view/View;)V

    .line 530
    iget-boolean v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mNeedsToBeShownOnResume:Z

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mShellToken:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->show(Landroid/os/IBinder;)V

    .line 532
    iput-boolean v3, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mNeedsToBeShownOnResume:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 4

    .line 554
    iput-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mContentView:Landroid/view/View;

    .line 555
    new-instance v0, Lcom/oculus/vrshell/panels/PointerForwarder;

    iget-object v1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mWindowManager:Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;

    invoke-direct {v0, p1, v1}, Lcom/oculus/vrshell/panels/PointerForwarder;-><init>(Landroid/view/View;Lcom/oculus/vrshell/panels/AndroidPanelWindowManager;)V

    iput-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPointerForwarder:Lcom/oculus/vrshell/panels/PointerForwarder;

    .line 556
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPresentation:Landroid/app/Presentation;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mWidth:I

    iget v3, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mHeight:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/app/Presentation;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setNeedsToBeShownOnShellTokenReady()V
    .locals 1

    const/4 v0, 0x1

    .line 545
    iput-boolean v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mNeedsToBeShownOnShellTokenReady:Z

    return-void
.end method

.method public setPositionAndRotation(FFFFFF)V
    .locals 5

    .line 580
    sget-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->TAG:Ljava/lang/String;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    .line 584
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v1, v4

    const-string v2, "Setting position of layer \"%s\" to have x at %f, y at %f and z at %f, and rotation (%f,%f,%f)"

    .line 582
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 580
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iput p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPosX:F

    .line 587
    iput p2, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPosY:F

    .line 588
    iput p3, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPosZ:F

    .line 589
    iput p4, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mRotX:F

    .line 590
    iput p5, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mRotY:F

    .line 591
    iput p6, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mRotZ:F

    .line 593
    iput-boolean v3, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mSystemPositioned:Z

    return-void
.end method

.method public setSize(II)V
    .locals 4

    .line 564
    sget-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 568
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "Setting size of layer \"%s\" to have width %d and height %d"

    .line 566
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 564
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mHeight:I

    if-eq v0, p2, :cond_1

    .line 571
    :cond_0
    iput p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mWidth:I

    .line 572
    iput p2, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mHeight:I

    .line 574
    invoke-direct {p0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->destroyPresentation()V

    .line 575
    invoke-direct {p0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->createPresentation()V

    :cond_1
    return-void
.end method

.method public setSpec(Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;)V
    .locals 10

    .line 319
    sget-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Setting spec for layer \"%s\""

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iput-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mSpec:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.oculus.android_panel_app.AndroidPanelLayer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mVirtualDisplayName:Ljava/lang/String;

    .line 323
    iget-boolean v0, p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->isSystemPositioned:Z

    iput-boolean v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mSystemPositioned:Z

    .line 324
    iget-boolean v0, p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->usesLayerTransform:Z

    iput-boolean v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mUsesLayerTransform:Z

    .line 325
    iget v0, p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->density:F

    iput v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mDensity:F

    .line 326
    iget-boolean v0, p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->supersampled:Z

    iput-boolean v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mSupersampled:Z

    .line 327
    iget v0, p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->radius:F

    iput v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mRadius:F

    .line 329
    iget v0, p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->width:I

    .line 330
    iget v1, p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->height:I

    .line 335
    iget-object v2, p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->resizeBehavior:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v3, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_WIDTH:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    const/16 v4, 0x3e8

    if-eq v2, v3, :cond_0

    iget-object v2, p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->resizeBehavior:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v3, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_WIDTH_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    if-ne v2, v3, :cond_1

    :cond_0
    const/16 v0, 0x3e8

    .line 339
    :cond_1
    iget-object v2, p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->resizeBehavior:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v3, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    if-eq v2, v3, :cond_2

    iget-object v2, p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->resizeBehavior:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v3, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_WIDTH_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    if-ne v2, v3, :cond_3

    :cond_2
    const/16 v1, 0x3e8

    .line 344
    :cond_3
    iget-boolean v2, p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->isSystemPositioned:Z

    if-eqz v2, :cond_4

    .line 345
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->setSystemPositioned()V

    goto :goto_0

    .line 347
    :cond_4
    iget v4, p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->posX:F

    iget v5, p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->posY:F

    iget v6, p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->posZ:F

    iget v7, p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->rotX:F

    iget v8, p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->rotY:F

    iget v9, p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->rotZ:F

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->setPositionAndRotation(FFFFFF)V

    .line 350
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->setSize(II)V

    return-void
.end method

.method public setSystemPositioned()V
    .locals 1

    const/4 v0, 0x1

    .line 597
    iput-boolean v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mSystemPositioned:Z

    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .locals 4

    .line 463
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getName()Ljava/lang/String;

    move-result-object v0

    .line 464
    sget-object v1, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Showing layer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 468
    iput-boolean v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mNeedsToBeShownOnShellTokenReady:Z

    .line 470
    iget-object v1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPresentation:Landroid/app/Presentation;

    if-nez v2, :cond_0

    goto :goto_1

    .line 478
    :cond_0
    iput-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mShellToken:Landroid/os/IBinder;

    .line 479
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    if-eqz p1, :cond_1

    .line 483
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_1

    .line 484
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_0

    .line 486
    :cond_1
    iget-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {p1}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7ee

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 488
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->unhide()V

    return-void

    .line 471
    :cond_2
    :goto_1
    sget-object p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "To show layer \"%s\", both the virtual display and presentation must be created first"

    .line 473
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unhide()V
    .locals 4

    .line 443
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getName()Ljava/lang/String;

    move-result-object v0

    .line 444
    sget-object v1, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhiding layer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 447
    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPresentation:Landroid/app/Presentation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mContentView:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    .line 458
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->show()V

    return-void

    .line 450
    :cond_1
    :goto_0
    sget-object v1, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "To unhide layer \"%s\", the surface must be set on the virtual display with non-null presentation and content"

    .line 452
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
