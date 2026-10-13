.class public Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "HomeDialog.java"

# interfaces
.implements Lcom/oculus/panelapp/anytimeui/PartyUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;
    }
.end annotation


# static fields
.field private static final BUG_REPORT:Ljava/lang/String; = "bugReport"

.field private static final QUIT:Ljava/lang/String; = "quit"

.field private static final RESUME:Ljava/lang/String; = "resume"

.field private static final TAG:Ljava/lang/String;

.field private static sScreenshotJpg:[B

.field private static sScreenshotPackage:Ljava/lang/String;


# instance fields
.field private mIsFirstTimeInQuestNux:Z

.field private mPartyLeader:Ljava/lang/String;

.field private mPartyType:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;

.field private mTargetPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->TAG:Ljava/lang/String;

    const-string v0, ""

    .line 295
    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->sScreenshotPackage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 297
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;->NONE:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->mPartyType:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;

    const-string p1, ""

    .line 298
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->mPartyLeader:Ljava/lang/String;

    .line 299
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->mTargetPackage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 301
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->mIsFirstTimeInQuestNux:Z

    .line 48
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->TAG:Ljava/lang/String;

    const-string p2, "Home Dialog constructed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->mIsFirstTimeInQuestNux:Z

    return p0
.end method

.method static synthetic access$200()V
    .locals 0

    .line 33
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->clearPreviousScreenshot()V

    return-void
.end method

.method static synthetic access$300()[B
    .locals 1

    .line 33
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->sScreenshotJpg:[B

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->mTargetPackage:Ljava/lang/String;

    return-object p0
.end method

.method private static clearPreviousScreenshot()V
    .locals 3

    .line 286
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->sScreenshotJpg:[B

    if-eqz v0, :cond_0

    .line 287
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Releasing old screenshot, jpg_size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->sScreenshotJpg:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 288
    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->sScreenshotJpg:[B

    :cond_0
    return-void
.end method

.method private createRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11

    .line 223
    new-instance v0, Landroid/graphics/Rect;

    .line 227
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getDialogConstants()Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/anytimeui/R$layout;->home_dialog:I

    invoke-virtual {v1, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->GetWidthForViewId(I)I

    move-result v1

    .line 228
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getDialogConstants()Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;

    move-result-object v2

    sget v3, Lcom/oculus/panelapp/anytimeui/R$layout;->home_dialog:I

    invoke-virtual {v2, v3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->GetHeightForViewId(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 229
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 231
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 232
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/oculus/panelapp/anytimeui/R$dimen;->home_dialog_corner_radius:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 234
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 235
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 236
    invoke-virtual {v6, v3, v3, v3, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 239
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/oculus/panelapp/anytimeui/R$color;->colorAnytimeHomeDialogBg:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 240
    invoke-virtual {v6, v1, v4, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 244
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v7, v8

    .line 245
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    cmpl-float v8, v7, v8

    if-lez v8, :cond_0

    .line 249
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    float-to-int v7, v8

    .line 250
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v8, v7

    div-int/lit8 v8, v8, 0x2

    .line 251
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-direct {v9, v3, v8, v10, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v7

    float-to-int v7, v8

    .line 255
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v8, v7

    div-int/lit8 v8, v8, 0x2

    .line 256
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v9, v8, v3, v7, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 260
    :goto_0
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 261
    invoke-virtual {v6, p1, v9, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 264
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/oculus/panelapp/anytimeui/R$color;->colorAnytimeHomeDialogImageBlend1:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 265
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 266
    invoke-virtual {v6, v1, v4, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 269
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/oculus/panelapp/anytimeui/R$color;->colorAnytimeHomeDialogImageBlend2:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 271
    invoke-virtual {v6, v1, v4, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-object v5
.end method

.method public static storeScreeshotForApp(Ljava/lang/String;[B)V
    .locals 3

    .line 189
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenshot update package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sput-object p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->sScreenshotPackage:Ljava/lang/String;

    .line 191
    sput-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->sScreenshotJpg:[B

    return-void
.end method

.method private updateBugReporterButton(Landroid/widget/Button;)V
    .locals 2

    .line 278
    sget v0, Lcom/oculus/os/Version;->CURRENT_SDK_VERSION:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/oculus/os/BugReporter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 279
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 281
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 3

    .line 72
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->home_dialog_button_quit:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 73
    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$1;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->home_dialog_button_resume:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 90
    new-instance v2, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$2;

    invoke-direct {v2, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$2;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->home_dialog_button_bug_report:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 101
    new-instance v2, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$3;

    invoke-direct {v2, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$3;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-direct {p0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->updateBugReporterButton(Landroid/widget/Button;)V

    .line 153
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v1

    iget-object v1, v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    iget-boolean v1, v1, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isExitAvailableOnPauseDialog:Z

    if-nez v1, :cond_0

    const/16 v1, 0x8

    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onBackButton()Z
    .locals 2

    .line 160
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->TAG:Ljava/lang/String;

    const-string v1, "Back Pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->onResume()V

    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    .line 166
    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->mIsFirstTimeInQuestNux:Z

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/logging/NUXLogging;->logResumed(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;)V

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const-string v1, "resume"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method

.method public refreshScreenshot()V
    .locals 5

    .line 195
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->home_dialog_home_img:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 196
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/anytimeui/R$drawable;->home_dialog_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 198
    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->sScreenshotJpg:[B

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 200
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 207
    :cond_0
    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->sScreenshotPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->sScreenshotPackage:Ljava/lang/String;

    const-string v3, "com.oculus.systemdriver"

    .line 208
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 215
    :cond_1
    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->sScreenshotPackage:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 216
    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App doesn\'t match stored screenshot app ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->sScreenshotPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 209
    :cond_2
    :goto_0
    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->sScreenshotJpg:[B

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 211
    invoke-direct {p0, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->createRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .line 213
    :cond_3
    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->TAG:Ljava/lang/String;

    const-string v3, "Failed to build screenshot from jpg."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_4
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setPartyInfo(Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;)V
    .locals 4

    .line 175
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->isInParty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->isLeader()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;->JOIN_SELF:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;->JOIN_OTHER:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;->NONE:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;

    .line 180
    :goto_0
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->getLeaderName()Ljava/lang/String;

    move-result-object p1

    .line 182
    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Party: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->mPartyType:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$PartyType;

    .line 185
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->mPartyLeader:Ljava/lang/String;

    return-void
.end method

.method public setTargetPackage(Ljava/lang/String;)V
    .locals 3

    .line 52
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "target package set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->mTargetPackage:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/vrshell/util/HorizonUtil;->getSafeApplicationName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->home_dialog_app_name:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "com.oculus.MontereySetup"

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oculus/vrshell/util/HorizonUtil;->getProfilePrefsMap(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "has_finished_monterey_nux"

    .line 63
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->mIsFirstTimeInQuestNux:Z

    .line 64
    iget-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->mIsFirstTimeInQuestNux:Z

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object p1

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/logging/NUXLogging;->logPaused(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;)V

    :cond_0
    return-void
.end method
