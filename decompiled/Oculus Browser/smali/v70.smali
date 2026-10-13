.class public Lv70;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LmZ;
.implements LxU;


# static fields
.field public static final A:Ljava/lang/Class;


# instance fields
.field public w:Lorg/chromium/chrome/browser/tab/Tab;

.field public x:I

.field public y:LnZ;

.field public final z:LpH0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lv70;

    sput-object v0, Lv70;->A:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lv70;->x:I

    .line 3
    new-instance v0, Lu70;

    invoke-direct {v0, p0}, Lu70;-><init>(Lv70;)V

    iput-object v0, p0, Lv70;->z:LpH0;

    .line 4
    iput-object p1, p0, Lv70;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 5
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, v0}, LWT;->a(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Lv70;->a()V

    return-void
.end method


# virtual methods
.method public final a(IF)I
    .locals 0

    int-to-float p1, p1

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method

.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lv70;->y:LnZ;

    if-nez v0, :cond_2

    iget-object v0, p0, Lv70;->w:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lv70;->w:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->B0()LnZ;

    move-result-object v0

    iput-object v0, p0, Lv70;->y:LnZ;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, v0, LnZ;->x:LWT;

    invoke-virtual {v0, p0}, LWT;->a(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public a(IIII)V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 6

    .line 4
    iget-object v0, p0, Lv70;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 5
    iget-object v1, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-nez v1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    .line 7
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lcd1;

    move-result-object v0

    .line 8
    iget v0, v0, Lcd1;->d:F

    .line 9
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v2, v0}, Lv70;->a(IF)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v3, v0}, Lv70;->a(IF)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 10
    invoke-virtual {p0, v4, v0}, Lv70;->a(IF)I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 11
    invoke-virtual {p0, v5, v0}, Lv70;->a(IF)I

    move-result v0

    .line 12
    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 13
    invoke-interface {v1, p1}, Lorg/chromium/content_public/browser/WebContents;->a(Landroid/graphics/Rect;)V

    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lv70;->w:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lv70;->w:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->isUserInteractable()Z

    move-result v2

    const-string v3, "LAYOUT_IN_DISPLAY_CUTOUT_MODE_DEFAULT"

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget v2, p0, Lv70;->x:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES"

    goto :goto_0

    :cond_2
    const-string v3, "LAYOUT_IN_DISPLAY_CUTOUT_MODE_NEVER"

    .line 5
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "layoutInDisplayCutoutMode"

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 8
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 9
    iget-object v1, p0, Lv70;->w:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv70;->w:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, Lv70;->z:LpH0;

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0, v1}, LWT;->b(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lv70;->y:LnZ;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, LnZ;->x:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lv70;->y:LnZ;

    :goto_0
    return-void
.end method
