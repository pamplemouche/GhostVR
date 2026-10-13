.class public LHX0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LDX0;

.field public final synthetic x:Lorg/chromium/gfx/mojom/Rect;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;LDX0;Lorg/chromium/gfx/mojom/Rect;)V
    .locals 0

    .line 1
    iput-object p2, p0, LHX0;->w:LDX0;

    iput-object p3, p0, LHX0;->x:Lorg/chromium/gfx/mojom/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, LHX0;->w:LDX0;

    iget-object v1, p0, LHX0;->x:Lorg/chromium/gfx/mojom/Rect;

    .line 2
    iget-object v2, v0, LDX0;->b:Landroid/app/Dialog;

    if-eqz v2, :cond_2

    iget-object v2, v0, LDX0;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, LDX0;->a(Lorg/chromium/gfx/mojom/Rect;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, v0, LDX0;->b:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v0, v0, LDX0;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method
