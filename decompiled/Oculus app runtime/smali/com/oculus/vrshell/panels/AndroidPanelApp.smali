.class public abstract Lcom/oculus/vrshell/panels/AndroidPanelApp;
.super Ljava/lang/Object;
.source "AndroidPanelApp.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/GenericInputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/panels/AndroidPanelApp$PanelFrameCallback;,
        Lcom/oculus/vrshell/panels/AndroidPanelApp$ViewConfigurator;
    }
.end annotation


# static fields
.field public static final MAIN_LAYER:Ljava/lang/String; = "#main"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentInputFrame:Lcom/oculus/vrshell/panels/InputFrame;

.field protected final mEnvironmentArgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mGuardianAware:Z

.field private final mLastInputFrame:Lcom/oculus/vrshell/panels/InputFrame;

.field private final mLayers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oculus/vrshell/panels/AndroidPanelLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativePanelApp:J

.field private final mPanelFrameCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oculus/vrshell/panels/AndroidPanelApp$PanelFrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mShellToken:Landroid/os/IBinder;

.field private final mStandaloneVr:Z

.field private final mSurfaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/oculus/vrshell/panels/AndroidPanelApp;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroid/content/Context;Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Landroid/content/Context;",
            "Landroid/view/Surface;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mPanelFrameCallbacks:Ljava/util/List;

    .line 599
    new-instance p1, Lcom/oculus/vrshell/panels/InputFrame;

    invoke-direct {p1}, Lcom/oculus/vrshell/panels/InputFrame;-><init>()V

    iput-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mLastInputFrame:Lcom/oculus/vrshell/panels/InputFrame;

    .line 600
    new-instance p1, Lcom/oculus/vrshell/panels/InputFrame;

    invoke-direct {p1}, Lcom/oculus/vrshell/panels/InputFrame;-><init>()V

    iput-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mCurrentInputFrame:Lcom/oculus/vrshell/panels/InputFrame;

    .line 603
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mEnvironmentArgs:Ljava/util/Map;

    .line 47
    sget-object p1, Lcom/oculus/vrshell/panels/AndroidPanelApp;->TAG:Ljava/lang/String;

    const-string v0, "Creating AndroidPanelApp"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "oculus.hardware.standalone_vr"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mStandaloneVr:Z

    .line 51
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "oculus.software.guardian"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mGuardianAware:Z

    .line 55
    invoke-virtual {p5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    invoke-virtual {p5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 57
    sget-object v2, Lcom/oculus/vrshell/panels/AndroidPanelApp;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v2, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mEnvironmentArgs:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->createNativeInstance()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mNativePanelApp:J

    .line 62
    iput-object p2, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mContext:Landroid/content/Context;

    .line 63
    new-instance p1, Ljava/util/HashMap;

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mLayers:Ljava/util/Map;

    .line 64
    new-instance p1, Ljava/util/HashMap;

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mSurfaces:Ljava/util/Map;

    .line 67
    iget-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mSurfaces:Ljava/util/Map;

    const-string p2, "#main"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mSurfaces:Ljava/util/Map;

    invoke-interface {p1, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;II)Landroid/util/Size;
    .locals 0

    .line 22
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->measureLayerView(Landroid/view/View;Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;II)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/vrshell/panels/AndroidPanelApp;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->nativeSetNextFrameAction(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/vrshell/panels/AndroidPanelApp;Lcom/oculus/vrshell/panels/AndroidPanelLayer;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->showPanelLayer(Lcom/oculus/vrshell/panels/AndroidPanelLayer;)V

    return-void
.end method

.method private static measureLayerView(Landroid/view/View;Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;II)Landroid/util/Size;
    .locals 3

    .line 452
    sget-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_WIDTH_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    if-ne p1, v0, :cond_1

    .line 456
    :cond_0
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 457
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 455
    invoke-virtual {p0, p3, v0}, Landroid/view/View;->measure(II)V

    .line 458
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    .line 461
    :cond_1
    sget-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_WIDTH:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_WIDTH_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    if-ne p1, v0, :cond_3

    .line 465
    :cond_2
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 466
    invoke-static {p3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 464
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 467
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 473
    :cond_3
    new-instance p0, Landroid/util/Size;

    const/4 p1, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method private native nativeHideLayer(JLjava/lang/String;)V
.end method

.method private native nativeQueueRawCommand(JLjava/lang/String;)V
.end method

.method private native nativeSendKeyboardOpen(JLjava/lang/String;FFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method private native nativeSetNextFrameAction(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeShowLayer(JLjava/lang/String;IIFFFFFFFZZIFZZ)V
.end method

.method private showPanelLayer(Lcom/oculus/vrshell/panels/AndroidPanelLayer;)V
    .locals 36

    move-object/from16 v0, p0

    .line 535
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 536
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getWidth()I

    move-result v2

    move v4, v2

    .line 537
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getHeight()I

    move-result v19

    move/from16 v5, v19

    .line 538
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->isHitTestable()Z

    move-result v20

    move/from16 v14, v20

    .line 539
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getShape()Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    move-result-object v6

    iget v13, v6, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->value:I

    move v15, v13

    .line 540
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getPositionX()F

    move-result v21

    move/from16 v6, v21

    .line 541
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getPositionY()F

    move-result v22

    move/from16 v7, v22

    .line 542
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getPositionZ()F

    move-result v23

    move/from16 v8, v23

    .line 543
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getRotationX()F

    move-result v24

    move/from16 v9, v24

    .line 544
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getRotationY()F

    move-result v25

    move/from16 v10, v25

    .line 545
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getRotationZ()F

    move-result v26

    move/from16 v11, v26

    .line 546
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getDensity()F

    move-result v27

    move/from16 v12, v27

    .line 547
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getRadius()F

    move-result v28

    move/from16 v16, v28

    .line 548
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->isSystemPositioned()Z

    move-result v29

    move/from16 v17, v29

    .line 549
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->isUsingLayerTransform()Z

    move-result v30

    move/from16 v18, v30

    .line 550
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->isSupersampled()Z

    move-result v31

    move/from16 v32, v13

    move/from16 v13, v31

    move-object/from16 v33, v0

    .line 552
    sget-object v0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->TAG:Ljava/lang/String;

    move-object/from16 v34, v3

    const/16 v3, 0x10

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v35, 0x0

    aput-object v1, v3, v35

    .line 557
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v3, v2

    .line 558
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v3, v2

    .line 559
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v3, v2

    .line 560
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v3, v2

    .line 561
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v3, v2

    .line 562
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v3, v2

    .line 563
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v3, v2

    .line 564
    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v3, v2

    .line 565
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v3, v2

    .line 566
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v3, v2

    .line 567
    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v3, v2

    .line 568
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v3, v2

    .line 569
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v3, v2

    .line 570
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v3, v2

    .line 571
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v3, v2

    const-string v1, "layerTransform: Showing panel layer \"%s\" in VrShell with width %d, height %d, position( %f , %f , %f), rotation (%f , %f , %f )  hit-testable %b, shape %d [radius: %f], and system-positioned %b. Using layerTransform: %b. Density: %f. Supersampled: %b "

    .line 554
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->onPanelSizeRequested()V

    .line 575
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->getNativePointer()J

    move-result-wide v1

    move-object/from16 v0, v33

    move-object/from16 v3, v34

    .line 574
    invoke-direct/range {v0 .. v18}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->nativeShowLayer(JLjava/lang/String;IIFFFFFFFZZIFZZ)V

    return-void
.end method

.method private tryShowLayer(Lcom/oculus/vrshell/panels/AndroidPanelLayer;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 514
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->needsToBeSized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mShellToken:Landroid/os/IBinder;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->getRequiresActivityToken()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->setNeedsToBeShownOnShellTokenReady()V

    return-void

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mShellToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->show(Landroid/os/IBinder;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public actionSendKeyboardOpen(Ljava/lang/String;FFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12

    .line 140
    sget-object v0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->TAG:Ljava/lang/String;

    const-string v1, "actionSendKeyboardOpen (sending keyboard open request with position to native layer)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->getNativePointer()J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    .line 143
    invoke-direct/range {v2 .. v11}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->nativeSendKeyboardOpen(JLjava/lang/String;FFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public addPanelFrameCallback(Lcom/oculus/vrshell/panels/AndroidPanelApp$PanelFrameCallback;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mPanelFrameCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected attachResizeLayoutListener(Lcom/oculus/vrshell/panels/AndroidPanelLayer;Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;)V
    .locals 2

    .line 389
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/oculus/vrshell/panels/AndroidPanelApp$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/oculus/vrshell/panels/AndroidPanelApp$1;-><init>(Lcom/oculus/vrshell/panels/AndroidPanelApp;Lcom/oculus/vrshell/panels/AndroidPanelLayer;Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;)V

    .line 390
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method protected abstract createNativeInstance()J
.end method

.method protected abstract createViewForLayer(Ljava/lang/String;ILandroid/content/Context;)Landroid/view/View;
.end method

.method public destroy()V
    .locals 2

    .line 231
    sget-object v0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->TAG:Ljava/lang/String;

    const-string v1, "destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mLayers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    .line 233
    invoke-virtual {v1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->destroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected ensurePanelLayer(Ljava/lang/String;ILcom/oculus/vrshell/panels/AndroidPanelApp$ViewConfigurator;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;
    .locals 4

    .line 341
    sget-object v0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 344
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Calling ensurePanelLayer on layer \"%s\" with view ID %d"

    .line 343
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mSurfaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mSurfaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 351
    invoke-virtual {p0, p1, p2}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->getLayerSpec(Ljava/lang/String;I)Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    move-result-object v1

    .line 354
    iget-object v2, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mLayers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 355
    new-instance v2, Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    iget-object v3, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, v1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;-><init>(Landroid/content/Context;Landroid/view/Surface;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;)V

    .line 356
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mLayers:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mLayers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    .line 361
    invoke-virtual {v2, v1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->setSpec(Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;)V

    .line 365
    :goto_0
    invoke-virtual {v2}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getPresentationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->createViewForLayer(Ljava/lang/String;ILandroid/content/Context;)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_1

    .line 370
    invoke-interface {p3, p1}, Lcom/oculus/vrshell/panels/AndroidPanelApp$ViewConfigurator;->configure(Landroid/view/View;)V

    .line 374
    :cond_1
    invoke-virtual {v2}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getResizeBehavior()Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    move-result-object p2

    invoke-virtual {v2}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getWidth()I

    move-result p3

    invoke-virtual {v2}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getHeight()I

    move-result v0

    invoke-static {p1, p2, p3, v0}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->measureLayerView(Landroid/view/View;Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;II)Landroid/util/Size;

    move-result-object p2

    .line 376
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {v2, p3, p2}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->setSize(II)V

    .line 378
    invoke-virtual {v2, p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->setContentView(Landroid/view/View;)V

    .line 379
    invoke-direct {p0, v2}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->showPanelLayer(Lcom/oculus/vrshell/panels/AndroidPanelLayer;)V

    return-object v2

    .line 347
    :cond_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Was not constructed with a layer named: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public frame(Ljava/lang/String;FFJJFFF)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 181
    iget-object v2, v0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mCurrentInputFrame:Lcom/oculus/vrshell/panels/InputFrame;

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v2 .. v11}, Lcom/oculus/vrshell/panels/InputFrame;->set(FFJJFFF)V

    .line 184
    iget-object v2, v0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mPanelFrameCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/vrshell/panels/AndroidPanelApp$PanelFrameCallback;

    .line 185
    iget-object v4, v0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mCurrentInputFrame:Lcom/oculus/vrshell/panels/InputFrame;

    invoke-interface {v3, v4}, Lcom/oculus/vrshell/panels/AndroidPanelApp$PanelFrameCallback;->onBeginFrame(Lcom/oculus/vrshell/panels/InputFrame;)V

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->getPanelLayer(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    move-result-object v5

    if-eqz v5, :cond_1

    move/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    .line 191
    invoke-virtual/range {v5 .. v14}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->frame(FFJJFFF)V

    goto :goto_1

    .line 193
    :cond_1
    sget-object v2, Lcom/oculus/vrshell/panels/AndroidPanelApp;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received layer input for hidden layer:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_1
    iget-object v2, v0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mLayers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    .line 198
    invoke-virtual {v3}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 199
    invoke-virtual {v3}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->frame()V

    goto :goto_2

    .line 206
    :cond_3
    iget-object v1, v0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mCurrentInputFrame:Lcom/oculus/vrshell/panels/InputFrame;

    invoke-virtual {v1}, Lcom/oculus/vrshell/panels/InputFrame;->getButtons()J

    move-result-wide v1

    invoke-static {}, Lcom/oculus/vrshell/panels/PanelButton;->getAnyActionFlagValue()J

    move-result-wide v3

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_4

    iget-object v1, v0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mLastInputFrame:Lcom/oculus/vrshell/panels/InputFrame;

    .line 207
    invoke-virtual {v1}, Lcom/oculus/vrshell/panels/InputFrame;->getButtons()J

    move-result-wide v1

    invoke-static {}, Lcom/oculus/vrshell/panels/PanelButton;->getAnyActionFlagValue()J

    move-result-wide v5

    and-long/2addr v1, v5

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    .line 208
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->onActionButton()Z

    .line 211
    :cond_4
    iget-object v1, v0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mCurrentInputFrame:Lcom/oculus/vrshell/panels/InputFrame;

    invoke-virtual {v1}, Lcom/oculus/vrshell/panels/InputFrame;->getButtons()J

    move-result-wide v1

    invoke-static {}, Lcom/oculus/vrshell/panels/PanelButton;->getAnyBackFlagValue()J

    move-result-wide v5

    and-long/2addr v1, v5

    cmp-long v5, v1, v3

    if-nez v5, :cond_5

    iget-object v1, v0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mLastInputFrame:Lcom/oculus/vrshell/panels/InputFrame;

    .line 212
    invoke-virtual {v1}, Lcom/oculus/vrshell/panels/InputFrame;->getButtons()J

    move-result-wide v1

    invoke-static {}, Lcom/oculus/vrshell/panels/PanelButton;->getAnyBackFlagValue()J

    move-result-wide v5

    and-long/2addr v1, v5

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    .line 213
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->onBackButton()Z

    .line 216
    :cond_5
    iget-object v1, v0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mCurrentInputFrame:Lcom/oculus/vrshell/panels/InputFrame;

    invoke-virtual {v1}, Lcom/oculus/vrshell/panels/InputFrame;->getButtons()J

    move-result-wide v1

    sget-object v5, Lcom/oculus/vrshell/panels/PanelButton;->HOME:Lcom/oculus/vrshell/panels/PanelButton;

    invoke-virtual {v5}, Lcom/oculus/vrshell/panels/PanelButton;->getFlagValue()J

    move-result-wide v5

    and-long/2addr v1, v5

    cmp-long v5, v1, v3

    if-nez v5, :cond_6

    iget-object v1, v0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mLastInputFrame:Lcom/oculus/vrshell/panels/InputFrame;

    .line 217
    invoke-virtual {v1}, Lcom/oculus/vrshell/panels/InputFrame;->getButtons()J

    move-result-wide v1

    sget-object v5, Lcom/oculus/vrshell/panels/PanelButton;->HOME:Lcom/oculus/vrshell/panels/PanelButton;

    invoke-virtual {v5}, Lcom/oculus/vrshell/panels/PanelButton;->getFlagValue()J

    move-result-wide v5

    and-long/2addr v1, v5

    cmp-long v5, v1, v3

    if-eqz v5, :cond_6

    .line 218
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->onHomeButton()Z

    .line 222
    :cond_6
    iget-object v1, v0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mPanelFrameCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/vrshell/panels/AndroidPanelApp$PanelFrameCallback;

    .line 223
    iget-object v3, v0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mCurrentInputFrame:Lcom/oculus/vrshell/panels/InputFrame;

    invoke-interface {v2, v3}, Lcom/oculus/vrshell/panels/AndroidPanelApp$PanelFrameCallback;->onEndFrame(Lcom/oculus/vrshell/panels/InputFrame;)V

    goto :goto_3

    .line 226
    :cond_7
    iget-object v1, v0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mLastInputFrame:Lcom/oculus/vrshell/panels/InputFrame;

    iget-object v2, v0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mCurrentInputFrame:Lcom/oculus/vrshell/panels/InputFrame;

    invoke-virtual {v1, v2}, Lcom/oculus/vrshell/panels/InputFrame;->set(Lcom/oculus/vrshell/panels/InputFrame;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDeviceType()Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mEnvironmentArgs:Ljava/util/Map;

    const-string v1, "_oc_device_type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/oculus/vrshell/util/DeviceUtil;->getDeviceType(I)Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method public getEnvironmentArg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mEnvironmentArgs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected abstract getLayerSpec(Ljava/lang/String;I)Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;
.end method

.method public getLayersToAutoEnable()[Ljava/lang/String;
    .locals 1

    const-string v0, "#main"

    .line 90
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativePointer()J
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mNativePanelApp:J

    return-wide v0
.end method

.method protected final getPanelLayer(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mLayers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    return-object p1
.end method

.method protected getRequiresActivityToken()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected handleKeyboardCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected handleKeyboardText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected final hideLayer(Ljava/lang/String;)V
    .locals 3

    .line 477
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mLayers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mLayers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    .line 484
    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->hide()V

    .line 489
    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->resetPanelSizeRequestVersions()V

    .line 491
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->getNativePointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->nativeHideLayer(JLjava/lang/String;)V

    return-void

    .line 478
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to hide layer that doesn\'t exist:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final inflateDefaultLayers()V
    .locals 6

    .line 78
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->getLayersToAutoEnable()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 79
    invoke-virtual {p0, v3, v4, v5}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->ensurePanelLayer(Ljava/lang/String;ILcom/oculus/vrshell/panels/AndroidPanelApp$ViewConfigurator;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isGuardianAware()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mGuardianAware:Z

    return v0
.end method

.method public isStandaloneVr()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mStandaloneVr:Z

    return v0
.end method

.method protected native nativeAudioPlay(JLjava/lang/String;)V
.end method

.method public nextFrameAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 241
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6f48a29b

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, -0x6335ec12

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "layerShow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "layerResize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    .line 263
    sget-object p2, Lcom/oculus/vrshell/panels/AndroidPanelApp;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown next frame action:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 259
    :cond_3
    sget-object p1, Lcom/oculus/vrshell/panels/AndroidPanelApp;->TAG:Ljava/lang/String;

    const-string p2, "layerResize is waiting for next frame"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 244
    :cond_4
    sget-object p1, Lcom/oculus/vrshell/panels/AndroidPanelApp;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "layerShow acknowledged for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mLayers:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    if-eqz p1, :cond_5

    .line 250
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->onPanelSizedResponse()V

    .line 251
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->tryShowLayer(Lcom/oculus/vrshell/panels/AndroidPanelLayer;)V

    goto :goto_2

    .line 253
    :cond_5
    sget-object p1, Lcom/oculus/vrshell/panels/AndroidPanelApp;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected layerShow for missing layer:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public onActionButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBackButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBackground()V
    .locals 2

    .line 276
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->getDeviceType()Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    move-result-object v0

    sget-object v1, Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;->GEARVR:Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    if-ne v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mLayers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    .line 283
    invoke-virtual {v1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->pausePresentation()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onForeground()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mLayers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    .line 270
    invoke-virtual {v1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->resumePresentation()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onHomeButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShellTokenReady(Landroid/os/IBinder;)V
    .locals 2

    .line 98
    sget-object v0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->TAG:Ljava/lang/String;

    const-string v1, "onShellTokenReady"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mShellToken:Landroid/os/IBinder;

    .line 103
    iget-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mLayers:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->needsToBeShownOnShellTokenReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-direct {p0, v0}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->tryShowLayer(Lcom/oculus/vrshell/panels/AndroidPanelLayer;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public queueNativeAudio(Lcom/oculus/vrshell/panels/SoundType;)V
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->getNativePointer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/SoundType;->getAudioName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->nativeAudioPlay(JLjava/lang/String;)V

    return-void
.end method

.method public final queueRawCommand(Ljava/lang/String;)V
    .locals 3

    .line 296
    sget-object v0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Queue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->getNativePointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->nativeQueueRawCommand(JLjava/lang/String;)V

    return-void
.end method

.method protected final unhideLayer(Ljava/lang/String;)V
    .locals 3

    .line 495
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mLayers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/oculus/vrshell/panels/AndroidPanelApp;->mLayers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    .line 501
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->unhide()V

    .line 502
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/panels/AndroidPanelApp;->showPanelLayer(Lcom/oculus/vrshell/panels/AndroidPanelLayer;)V

    return-void

    .line 496
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to unhide layer that doesn\'t exist:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
