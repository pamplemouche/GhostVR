.class public LIX0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LDX0;

.field public final synthetic x:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;LDX0;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iput-object p2, p0, LIX0;->w:LDX0;

    iput-object p3, p0, LIX0;->x:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, LIX0;->w:LDX0;

    iget-object v1, p0, LIX0;->x:Landroid/os/IBinder;

    .line 2
    invoke-virtual {v0}, LDX0;->a()V

    .line 3
    iget-object v2, v0, LDX0;->b:Landroid/app/Dialog;

    if-eqz v2, :cond_4

    iget-object v2, v0, LDX0;->a:LCX0;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 4
    iget-object v3, v0, LDX0;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eqz v3, :cond_1

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v3, v0, LDX0;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v4, v1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iput-object v1, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 7
    iget-object v1, v0, LDX0;->b:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v3, v0, LDX0;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 8
    new-instance v1, LBX0;

    invoke-direct {v1, v0, v2}, LBX0;-><init>(LDX0;LAX0;)V

    iput-object v1, v0, LDX0;->c:LBX0;

    .line 9
    iget-object v1, v0, LDX0;->b:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, v0, LDX0;->c:LBX0;

    invoke-virtual {v1, v2}, Landroid/view/Window;->takeSurface(Landroid/view/SurfaceHolder$Callback2;)V

    .line 10
    iget-object v0, v0, LDX0;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 11
    :cond_3
    :goto_0
    iget-object v1, v0, LDX0;->a:LCX0;

    invoke-interface {v1}, LCX0;->a()V

    .line 12
    iput-object v2, v0, LDX0;->a:LCX0;

    .line 13
    invoke-virtual {v0}, LDX0;->b()V

    :cond_4
    :goto_1
    return-void
.end method
