.class public LDX0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:LCX0;

.field public b:Landroid/app/Dialog;

.field public c:LBX0;

.field public d:Landroid/view/WindowManager$LayoutParams;

.field public e:Z

.field public f:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 6
    iget-object v0, p0, LDX0;->f:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DialogOverlayCore is on the UI thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DialogOverlayCore is on the wrong thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lorg/chromium/gfx/mojom/Rect;)Z
    .locals 3

    .line 1
    iget-object v0, p0, LDX0;->d:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p1, Lorg/chromium/gfx/mojom/Rect;->b:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p1, Lorg/chromium/gfx/mojom/Rect;->c:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v2, p1, Lorg/chromium/gfx/mojom/Rect;->d:I

    if-ne v1, v2, :cond_0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v1, p1, Lorg/chromium/gfx/mojom/Rect;->e:I

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, LDX0;->d:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Lorg/chromium/gfx/mojom/Rect;->b:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3
    iget v1, p1, Lorg/chromium/gfx/mojom/Rect;->c:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4
    iget v1, p1, Lorg/chromium/gfx/mojom/Rect;->d:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 5
    iget p1, p1, Lorg/chromium/gfx/mojom/Rect;->e:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 p1, 0x1

    return p1
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, LDX0;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, LDX0;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DSCore"

    const-string v2, "Failed to dismiss overlay dialog.  \"WindowLeaked\" is ignorable."

    .line 3
    invoke-static {v1, v2, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, LDX0;->b:Landroid/app/Dialog;

    .line 5
    iput-object v0, p0, LDX0;->c:LBX0;

    return-void
.end method
