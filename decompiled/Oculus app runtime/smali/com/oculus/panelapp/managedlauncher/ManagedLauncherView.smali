.class public Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;
.super Landroid/widget/FrameLayout;
.source "ManagedLauncherView.java"


# static fields
.field private static final APP_MARGIN_BOTTOM:I = 0x14

.field private static final APP_MARGIN_SIDES:I = 0xa

.field private static final APP_QUERY_INTERVAL_MS:I = 0x1388

.field private static final APP_SCROLL_DISTANCE:I = 0xd4

.field private static final APP_SIZE:I = 0xc0

.field private static final BITMAP_CORNER_RADIUS:F = 10.0f

.field private static final COLUMN_COUNT:I = 0x3

.field private static final OUTLINE_WIDTH_PADDING:I = 0x6

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private downButtonDown:Z

.field private downButtonHover:Z

.field private installedAppCount:I

.field private final installedLauncherPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Lcom/oculus/panelapp/managedlauncher/Config;

.field private final mHandler:Landroid/os/Handler;

.field private mPanelApp:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;

.field private final mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private scrollDownButton:Lcom/oculus/vrshell/panels/views/ShellButton;

.field private scrollUpButton:Lcom/oculus/vrshell/panels/views/ShellButton;

.field private scrollView:Landroid/widget/ScrollView;

.field private upButtonDown:Z

.field private upButtonHover:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->installedLauncherPackages:Ljava/util/Set;

    .line 83
    sget-object p1, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->TAG:Ljava/lang/String;

    const-string p2, "ManagedLauncherView created"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->mHandler:Landroid/os/Handler;

    .line 86
    new-instance p1, Ljava/util/Timer;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/Timer;-><init>(Z)V

    iput-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->mTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;)Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->mPanelApp:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->onButtonClick(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$202(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->upButtonHover:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->reconcileUpButtonState()V

    return-void
.end method

.method static synthetic access$402(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->upButtonDown:Z

    return p1
.end method

.method static synthetic access$500(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;)Landroid/widget/ScrollView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->scrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->downButtonHover:Z

    return p1
.end method

.method static synthetic access$700(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->reconcileDownButtonState()V

    return-void
.end method

.method static synthetic access$802(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->downButtonDown:Z

    return p1
.end method

.method static synthetic access$900(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->checkInstalledApps()V

    return-void
.end method

.method private static calculateHeightFromAppCount(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x244

    return p0

    :pswitch_0
    const/16 p0, 0x214

    return p0

    :pswitch_1
    const/16 p0, 0x140

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private checkInstalledApps()V
    .locals 6

    .line 340
    iget-object v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->mPanelApp:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 344
    iput v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->installedAppCount:I

    .line 346
    iget-object v1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->mConfig:Lcom/oculus/panelapp/managedlauncher/Config;

    iget-object v1, v1, Lcom/oculus/panelapp/managedlauncher/Config;->launcherActions:Ljava/util/List;

    .line 349
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;

    .line 350
    iget-object v2, v2, Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    .line 353
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 356
    iget v4, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->installedAppCount:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->installedAppCount:I

    .line 357
    iget-object v4, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->installedLauncherPackages:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_1

    .line 359
    :try_start_1
    iget-object v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->installedLauncherPackages:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    goto :goto_2

    :catch_1
    nop

    .line 364
    :goto_2
    iget-object v4, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->installedLauncherPackages:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 366
    iget-object v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->installedLauncherPackages:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 372
    invoke-virtual {p0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->reinitialize()V

    :cond_3
    :goto_3
    return-void
.end method

.method private createAppCardBitmap(IIIF)Landroid/graphics/Bitmap;
    .locals 8

    .line 427
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 428
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 430
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const/4 p3, 0x1

    .line 431
    invoke-virtual {v7, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 432
    invoke-virtual {v7, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    .line 433
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    neg-float v2, p4

    .line 439
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p3, 0x3f000000    # 0.5f

    add-float v3, p1, p3

    .line 440
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float v4, p1, p3

    const/high16 v1, -0x41000000    # -0.5f

    move v5, p4

    move v6, p4

    .line 436
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-object p2
.end method

.method private createGradientBitmap(IF)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 397
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 398
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 400
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x43b40000    # 360.0f

    mul-float v4, v4, v5

    const/high16 v6, 0x43dc0000    # 440.0f

    add-float/2addr v6, v4

    rem-float/2addr v6, v5

    div-float/2addr v4, v5

    const v7, 0x3f59999a    # 0.85f

    .line 402
    invoke-direct {v0, v4, v7, v7}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->hsvToRgb(FFF)I

    move-result v4

    const/high16 v7, -0x1000000

    or-int/2addr v4, v7

    div-float/2addr v6, v5

    const/high16 v5, 0x3f800000    # 1.0f

    const v8, 0x3ecccccd    # 0.4f

    .line 403
    invoke-direct {v0, v6, v5, v8}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->hsvToRgb(FFF)I

    move-result v5

    or-int/2addr v5, v7

    .line 405
    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-direct {v6, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 407
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    const/4 v9, 0x1

    .line 408
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 409
    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 410
    new-instance v7, Landroid/graphics/LinearGradient;

    int-to-float v14, v1

    const/4 v1, 0x2

    new-array v15, v1, [I

    const/4 v13, 0x0

    aput v4, v15, v13

    aput v5, v15, v9

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v10, v7

    const/4 v4, 0x0

    move v13, v14

    move-object/from16 v16, v1

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 419
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    move/from16 v1, p2

    .line 420
    invoke-virtual {v3, v6, v1, v1, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-object v2

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private hsvToRgb(FFF)I
    .locals 5

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float p1, p1, v0

    .line 452
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v1, v0

    sub-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p2

    mul-float v2, v2, p3

    mul-float v3, p1, p2

    sub-float v3, v1, v3

    mul-float v3, v3, p3

    sub-float p1, v1, p1

    mul-float p1, p1, p2

    sub-float/2addr v1, p1

    mul-float p1, p3, v1

    .line 458
    rem-int/lit8 v0, v0, 0x6

    const/4 p2, 0x0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    const/4 p3, 0x0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    move p1, v3

    goto :goto_1

    :cond_1
    move v4, p3

    move p3, p1

    goto :goto_0

    :cond_2
    move p1, p3

    move p3, v2

    move v2, v3

    goto :goto_1

    :cond_3
    move v4, v2

    move v2, p3

    move p3, v4

    goto :goto_1

    :cond_4
    move p1, v2

    move v2, p3

    move p3, v3

    goto :goto_1

    :cond_5
    move v4, v2

    move v2, p1

    :goto_0
    move p1, v4

    :goto_1
    const/high16 p2, 0x437f0000    # 255.0f

    mul-float p3, p3, p2

    .line 496
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    shl-int/lit8 p3, p3, 0x10

    mul-float v2, v2, p2

    .line 497
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p3, v0

    mul-float p1, p1, p2

    .line 498
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    or-int/2addr p1, p3

    return p1
.end method

.method private onButtonClick(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;)V
    .locals 5

    .line 503
    iget-object v0, p2, Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;->launchCommand:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x6191870b

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x208c7b32

    if-eq v1, v2, :cond_1

    const v2, 0x6f344c07

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "unlockDemoLauncher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "launchHome"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v1, "unlockGuardian"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;->launchCommand:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->queueRawCommand(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string p2, "launch com.oculus.vrshell.home/com.oculus.vrshell.home.ReactService /prime"

    .line 513
    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->queueRawCommand(Ljava/lang/String;)V

    goto :goto_2

    .line 509
    :cond_5
    invoke-virtual {p1}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->unlockGuardian()V

    goto :goto_2

    .line 505
    :cond_6
    invoke-virtual {p1}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->unlock()V

    :goto_2
    return-void
.end method

.method private reconcileDownButtonState()V
    .locals 2

    .line 245
    iget-boolean v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->downButtonDown:Z

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->scrollDownButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    sget v1, Lcom/oculus/panelapp/managedlauncher/R$drawable;->managed_launcher_scroll_button_down_selected:I

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/ShellButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 247
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->downButtonHover:Z

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->scrollDownButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    sget v1, Lcom/oculus/panelapp/managedlauncher/R$drawable;->managed_launcher_scroll_button_down_hover:I

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/ShellButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->scrollDownButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    sget v1, Lcom/oculus/panelapp/managedlauncher/R$drawable;->managed_launcher_scroll_button_down_unselected:I

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/ShellButton;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private reconcileUpButtonState()V
    .locals 2

    .line 235
    iget-boolean v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->upButtonDown:Z

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->scrollUpButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    sget v1, Lcom/oculus/panelapp/managedlauncher/R$drawable;->managed_launcher_scroll_button_up_selected:I

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/ShellButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 237
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->upButtonHover:Z

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->scrollUpButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    sget v1, Lcom/oculus/panelapp/managedlauncher/R$drawable;->managed_launcher_scroll_button_up_hover:I

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/ShellButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->scrollUpButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    sget v1, Lcom/oculus/panelapp/managedlauncher/R$drawable;->managed_launcher_scroll_button_up_unselected:I

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/ShellButton;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private reinitializeScrollButtons()V
    .locals 2

    .line 255
    iget v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->installedAppCount:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->scrollUpButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/ShellButton;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->scrollDownButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/ShellButton;->setVisibility(I)V

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->scrollUpButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/ShellButton;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->scrollDownButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/ShellButton;->setVisibility(I)V

    .line 263
    :goto_0
    iget-object v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->scrollUpButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    new-instance v1, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$3;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$3;-><init>(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;)V

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/ShellButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 279
    iget-object v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->scrollUpButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    new-instance v1, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$4;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$4;-><init>(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;)V

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/ShellButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 300
    iget-object v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->scrollDownButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    new-instance v1, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$5;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$5;-><init>(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;)V

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/ShellButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 316
    iget-object v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->scrollDownButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    new-instance v1, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$6;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$6;-><init>(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;)V

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/ShellButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private roundBitmapCorners(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;
    .locals 6

    .line 377
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 378
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 380
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 382
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    .line 383
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v3, -0x1000000

    .line 384
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    .line 385
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 386
    invoke-virtual {v0, v1, p3, p3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 387
    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 389
    new-instance p3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {p3, v3, v3, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 390
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v1, v3, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 391
    invoke-virtual {v0, p1, p3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object p2
.end method


# virtual methods
.method public initialize(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;Lcom/oculus/panelapp/managedlauncher/Config;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->mPanelApp:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;

    .line 91
    iput-object p2, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->mConfig:Lcom/oculus/panelapp/managedlauncher/Config;

    .line 93
    sget p1, Lcom/oculus/panelapp/managedlauncher/R$id;->managed_launcher_scroll_up_button:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/vrshell/panels/views/ShellButton;

    iput-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->scrollUpButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    .line 94
    sget p1, Lcom/oculus/panelapp/managedlauncher/R$id;->managed_launcher_scroll_down_button:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/vrshell/panels/views/ShellButton;

    iput-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->scrollDownButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    .line 95
    sget p1, Lcom/oculus/panelapp/managedlauncher/R$id;->managed_launcher_scroll_view:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->scrollView:Landroid/widget/ScrollView;

    .line 98
    invoke-direct {p0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->checkInstalledApps()V

    .line 100
    invoke-virtual {p0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->onForeground()V

    return-void
.end method

.method onBackground()V
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    .line 548
    iput-object v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->mTimerTask:Ljava/util/TimerTask;

    .line 549
    iget-object v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_0
    return-void
.end method

.method onForeground()V
    .locals 7

    .line 523
    iget-object v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->mTimerTask:Ljava/util/TimerTask;

    if-nez v0, :cond_0

    .line 524
    new-instance v0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$7;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$7;-><init>(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;)V

    iput-object v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->mTimerTask:Ljava/util/TimerTask;

    .line 541
    iget-object v1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->mTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1388

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 555
    iget p2, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->installedAppCount:I

    .line 557
    invoke-static {p2}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->calculateHeightFromAppCount(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 556
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 559
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public reinitialize()V
    .locals 16

    move-object/from16 v0, p0

    .line 104
    iget-object v1, v0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->mConfig:Lcom/oculus/panelapp/managedlauncher/Config;

    iget-object v1, v1, Lcom/oculus/panelapp/managedlauncher/Config;->launcherActions:Ljava/util/List;

    .line 105
    sget v2, Lcom/oculus/panelapp/managedlauncher/R$id;->managed_launcher_panel_apps:I

    .line 106
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 108
    invoke-direct/range {p0 .. p0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->reinitializeScrollButtons()V

    .line 110
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 113
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 115
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 116
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v6, v4

    const/4 v4, 0x0

    :goto_1
    const/4 v7, 0x3

    if-ge v4, v7, :cond_5

    .line 119
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_5

    .line 120
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;

    .line 121
    iget-object v9, v8, Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;->packageName:Ljava/lang/String;

    .line 122
    sget-object v10, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->TAG:Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v11, v8, Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;->appName:Ljava/lang/String;

    aput-object v11, v7, v3

    iget-object v11, v8, Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;->launchCommand:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v11, v7, v12

    const/4 v11, 0x2

    aput-object v9, v7, v11

    const-string v13, "%s - %s"

    .line 123
    invoke-static {v13, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 122
    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v9, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    .line 132
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v11, 0x80

    .line 133
    invoke-virtual {v10, v9, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 142
    iget v10, v9, Landroid/content/pm/ApplicationInfo;->icon:I

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    .line 146
    :try_start_1
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v10

    .line 147
    iget v13, v9, Landroid/content/pm/ApplicationInfo;->icon:I

    const/16 v14, 0x280

    .line 148
    invoke-virtual {v10, v13, v14, v11}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v10
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 151
    :try_start_2
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_0
    move-object v10, v11

    :catch_1
    move-object v7, v11

    goto :goto_2

    :cond_0
    move-object v7, v11

    move-object v10, v7

    .line 156
    :goto_2
    new-instance v9, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v13, 0xc6

    invoke-direct {v9, v13, v13}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/16 v13, 0xe

    const/4 v14, 0x4

    .line 159
    invoke-virtual {v9, v14, v3, v14, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 167
    instance-of v13, v10, Landroid/graphics/drawable/BitmapDrawable;

    const/high16 v15, 0x41200000    # 10.0f

    const/16 v3, 0xc0

    if-eqz v13, :cond_1

    .line 168
    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    .line 170
    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 169
    invoke-direct {v0, v10, v3, v15}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->roundBitmapCorners(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_3

    :cond_1
    move-object v10, v11

    :goto_3
    if-eqz v10, :cond_3

    .line 173
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-ge v13, v3, :cond_2

    goto :goto_4

    :cond_2
    const/4 v13, 0x0

    goto :goto_5

    .line 174
    :cond_3
    :goto_4
    invoke-direct {v0, v3, v15}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->createGradientBitmap(IF)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v13, 0x1

    .line 177
    :goto_5
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-direct {v12, v14, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    sget v14, Lcom/oculus/panelapp/managedlauncher/R$layout;->managed_launcher_app_card:I

    invoke-virtual {v10, v14, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 183
    invoke-virtual {v10, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    sget v9, Lcom/oculus/panelapp/managedlauncher/R$id;->managed_launcher_app_text_card:I

    .line 186
    invoke-virtual {v10, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v14, -0xe0dfdf

    const/16 v11, 0x40

    .line 188
    invoke-direct {v0, v14, v3, v11, v15}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->createAppCardBitmap(IIIF)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 189
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-direct {v11, v14, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 191
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x4

    .line 193
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    sget v3, Lcom/oculus/panelapp/managedlauncher/R$id;->managed_launcher_icon_button:I

    .line 196
    invoke-virtual {v10, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oculus/vrshell/panels/views/ShellButton;

    if-eqz v13, :cond_4

    goto :goto_6

    :cond_4
    const/4 v7, 0x0

    .line 197
    :goto_6
    invoke-virtual {v3, v7}, Lcom/oculus/vrshell/panels/views/ShellButton;->setText(Ljava/lang/CharSequence;)V

    .line 198
    invoke-virtual {v3, v12}, Lcom/oculus/vrshell/panels/views/ShellButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 199
    new-instance v7, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$1;

    invoke-direct {v7, v0, v9, v10}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$1;-><init>(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v3, v7}, Lcom/oculus/vrshell/panels/views/ShellButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 218
    new-instance v7, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$2;

    invoke-direct {v7, v0, v8}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$2;-><init>(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;)V

    invoke-virtual {v3, v7}, Lcom/oculus/vrshell/panels/views/ShellButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_7

    :catch_2
    add-int/lit8 v4, v4, -0x1

    :goto_7
    const/4 v3, 0x1

    add-int/2addr v4, v3

    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 230
    :cond_5
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v4, v6

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_6
    return-void
.end method
