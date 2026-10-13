.class public LFX0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A:Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;

.field public final synthetic w:LDX0;

.field public final synthetic x:Landroid/content/Context;

.field public final synthetic y:LG51;

.field public final synthetic z:Z


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;LDX0;Landroid/content/Context;LG51;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, LFX0;->A:Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;

    iput-object p2, p0, LFX0;->w:LDX0;

    iput-object p3, p0, LFX0;->x:Landroid/content/Context;

    iput-object p4, p0, LFX0;->y:LG51;

    iput-boolean p5, p0, LFX0;->z:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, LFX0;->w:LDX0;

    iget-object v1, p0, LFX0;->x:Landroid/content/Context;

    iget-object v2, p0, LFX0;->y:LG51;

    iget-object v3, p0, LFX0;->A:Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;

    .line 2
    iget-object v3, v3, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->A:LMX0;

    .line 3
    iget-boolean v4, p0, LFX0;->z:Z

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    iput-object v5, v0, LDX0;->f:Landroid/os/Looper;

    .line 5
    iput-object v3, v0, LDX0;->a:LCX0;

    .line 6
    iput-boolean v4, v0, LDX0;->e:Z

    .line 7
    new-instance v3, Landroid/app/Dialog;

    const v4, 0x1030055

    invoke-direct {v3, v1, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v3, v0, LDX0;->b:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v3, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 9
    iget-object v1, v0, LDX0;->b:Landroid/app/Dialog;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 10
    iget-boolean v1, v2, LG51;->d:Z

    const-string v3, "privateFlags"

    .line 11
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v5, 0x33

    .line 12
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 13
    iget-boolean v5, v0, LDX0;->e:Z

    if-eqz v5, :cond_0

    const/16 v5, 0x3e8

    goto :goto_0

    :cond_0
    const/16 v5, 0x3e9

    .line 14
    :goto_0
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x238

    .line 15
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eqz v1, :cond_1

    const/16 v1, 0x2238

    .line 16
    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 17
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 18
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 19
    invoke-virtual {v5, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    or-int/lit8 v1, v1, 0x40

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :catch_0
    iput-object v4, v0, LDX0;->d:Landroid/view/WindowManager$LayoutParams;

    .line 22
    iget-object v1, v2, LG51;->c:Lorg/chromium/gfx/mojom/Rect;

    invoke-virtual {v0, v1}, LDX0;->a(Lorg/chromium/gfx/mojom/Rect;)Z

    .line 23
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LEX0;

    invoke-direct {v1, p0}, LEX0;-><init>(LFX0;)V

    const-wide/16 v2, 0x0

    .line 24
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 25
    throw v0
.end method
