.class public Lorg/chromium/content/browser/androidoverlay/AndroidOverlayProviderImpl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LI51;


# instance fields
.field public w:Landroid/os/HandlerThread;

.field public x:Landroid/os/Handler;

.field public y:I

.field public z:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/content/browser/androidoverlay/AndroidOverlayProviderImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LyX0;

    invoke-direct {v0, p0}, LyX0;-><init>(Lorg/chromium/content/browser/androidoverlay/AndroidOverlayProviderImpl;)V

    iput-object v0, p0, Lorg/chromium/content/browser/androidoverlay/AndroidOverlayProviderImpl;->z:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/content/browser/androidoverlay/AndroidOverlayProviderImpl;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 12
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 13
    iget v0, p0, Lorg/chromium/content/browser/androidoverlay/AndroidOverlayProviderImpl;->y:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/androidoverlay/AndroidOverlayProviderImpl;->y:I

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 14
    throw p0
.end method

.method public static areOverlaysSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(LG61;Ly51;LG51;)V
    .locals 7

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget v0, p0, Lorg/chromium/content/browser/androidoverlay/AndroidOverlayProviderImpl;->y:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 3
    check-cast p2, LD51;

    invoke-virtual {p2}, LD51;->a()V

    .line 4
    invoke-virtual {p2}, Lz61;->close()V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/AndroidOverlayProviderImpl;->w:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "AndroidOverlayThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/content/browser/androidoverlay/AndroidOverlayProviderImpl;->w:Landroid/os/HandlerThread;

    .line 7
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 8
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lorg/chromium/content/browser/androidoverlay/AndroidOverlayProviderImpl;->w:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/chromium/content/browser/androidoverlay/AndroidOverlayProviderImpl;->x:Landroid/os/Handler;

    .line 9
    :goto_0
    iget v0, p0, Lorg/chromium/content/browser/androidoverlay/AndroidOverlayProviderImpl;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/chromium/content/browser/androidoverlay/AndroidOverlayProviderImpl;->y:I

    .line 10
    new-instance v0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;

    iget-object v4, p0, Lorg/chromium/content/browser/androidoverlay/AndroidOverlayProviderImpl;->x:Landroid/os/Handler;

    iget-object v5, p0, Lorg/chromium/content/browser/androidoverlay/AndroidOverlayProviderImpl;->z:Ljava/lang/Runnable;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;-><init>(Ly51;LG51;Landroid/os/Handler;Ljava/lang/Runnable;Z)V

    .line 11
    sget-object p2, Lw51;->k:LA61;

    invoke-virtual {p2, v0, p1}, LA61;->a(LE61;LG61;)V

    return-void
.end method

.method public a(Ly71;)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method
