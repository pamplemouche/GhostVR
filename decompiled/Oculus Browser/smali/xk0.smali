.class public Lxk0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static k:Landroid/util/SparseArray;

.field public static l:Landroid/util/SparseArray;


# instance fields
.field public final a:Lom0;

.field public b:I

.field public c:Lrk0;

.field public d:Landroid/util/SparseArray;

.field public e:LPl0;

.field public f:Landroid/graphics/Bitmap;

.field public g:Lok0;

.field public h:LS5;

.field public i:Lwk0;

.field public final j:LH5;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lxk0;->k:Landroid/util/SparseArray;

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lxk0;->l:Landroid/util/SparseArray;

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService;->b()I

    const v1, 0x7f0b025b

    new-instance v2, Ltk0;

    const-class v3, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService;

    const-class v4, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackMediaButtonReceiver;

    const-string v5, "MediaPlayback"

    invoke-direct {v2, v3, v4, v5}, Ltk0;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    sget-object v0, Lxk0;->l:Landroid/util/SparseArray;

    invoke-static {}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PresentationListenerService;->b()I

    const v1, 0x7f0b035d

    new-instance v2, Ltk0;

    const-class v3, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PresentationListenerService;

    const-class v4, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PresentationMediaButtonReceiver;

    const-string v5, "MediaPresentation"

    invoke-direct {v2, v3, v4, v5}, Ltk0;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    sget-object v0, Lxk0;->l:Landroid/util/SparseArray;

    invoke-static {}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$CastListenerService;->b()I

    const v1, 0x7f0b037e

    new-instance v2, Ltk0;

    const-class v3, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$CastListenerService;

    const-class v4, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$CastMediaButtonReceiver;

    const-string v5, "MediaRemote"

    invoke-direct {v2, v3, v4, v5}, Ltk0;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lom0;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lqk0;

    invoke-direct {v0, p0}, Lqk0;-><init>(Lxk0;)V

    iput-object v0, p0, Lxk0;->j:LH5;

    .line 3
    iput-object p1, p0, Lxk0;->a:Lom0;

    .line 4
    iput p2, p0, Lxk0;->b:I

    .line 5
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lxk0;->d:Landroid/util/SparseArray;

    .line 6
    new-instance p2, Lsk0;

    const v0, 0x7f1300f0

    const-string v1, "MediaNotificationManager.ListenerService.PLAY"

    const v2, 0x7f08020a

    invoke-direct {p2, v2, v0, v1}, Lsk0;-><init>(IILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lxk0;->d:Landroid/util/SparseArray;

    new-instance p2, Lsk0;

    const v0, 0x7f1300ef

    const-string v1, "MediaNotificationManager.ListenerService.PAUSE"

    const v2, 0x7f080203

    invoke-direct {p2, v2, v0, v1}, Lsk0;-><init>(IILjava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lxk0;->d:Landroid/util/SparseArray;

    new-instance p2, Lsk0;

    const v0, 0x7f1300fa

    const-string v1, "MediaNotificationManager.ListenerService.STOP"

    const v2, 0x7f08021d

    invoke-direct {p2, v2, v0, v1}, Lsk0;-><init>(IILjava/lang/String;)V

    const/4 v0, 0x7

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lxk0;->d:Landroid/util/SparseArray;

    new-instance p2, Lsk0;

    const v0, 0x7f1300f2

    const-string v1, "MediaNotificationManager.ListenerService.PREVIOUS_TRACK"

    const v2, 0x7f08021c

    invoke-direct {p2, v2, v0, v1}, Lsk0;-><init>(IILjava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lxk0;->d:Landroid/util/SparseArray;

    new-instance p2, Lsk0;

    const v0, 0x7f1300ec

    const-string v1, "MediaNotificationManager.ListenerService.NEXT_TRACK"

    const v2, 0x7f08021b

    invoke-direct {p2, v2, v0, v1}, Lsk0;-><init>(IILjava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lxk0;->d:Landroid/util/SparseArray;

    new-instance p2, Lsk0;

    const v0, 0x7f1300f7

    const-string v1, "MediaNotificationManager.ListenerService.SEEK_FORWARD"

    const v2, 0x7f080136

    invoke-direct {p2, v2, v0, v1}, Lsk0;-><init>(IILjava/lang/String;)V

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lxk0;->d:Landroid/util/SparseArray;

    new-instance p2, Lsk0;

    const v0, 0x7f1300f6

    const-string v1, "MediaNotificationmanager.ListenerService.SEEK_BACKWARD"

    const v2, 0x7f080137

    invoke-direct {p2, v2, v0, v1}, Lsk0;-><init>(IILjava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    new-instance p1, Lwk0;

    invoke-direct {p1, p0}, Lwk0;-><init>(Lxk0;)V

    iput-object p1, p0, Lxk0;->i:Lwk0;

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 24
    :cond_0
    invoke-static {}, Lxk0;->f()I

    move-result v0

    .line 25
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 26
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 27
    invoke-static {}, Lxk0;->f()I

    move-result v3

    if-ge v2, v3, :cond_1

    return-object p0

    .line 28
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, -0x40000000    # -2.0f

    div-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v4, v0

    mul-float v3, v3, v4

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 29
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v4, v2

    .line 30
    invoke-virtual {v1, v4, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 31
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 32
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 33
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 34
    invoke-virtual {v2, p0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static a(Lok0;)V
    .locals 3

    .line 13
    sget-object v0, Lxk0;->k:Landroid/util/SparseArray;

    iget v1, p0, Lok0;->k:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxk0;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lxk0;

    .line 15
    sget-object v1, Lnm0;->a:Lom0;

    .line 16
    iget v2, p0, Lok0;->k:I

    invoke-direct {v0, v1, v2}, Lxk0;-><init>(Lom0;I)V

    .line 17
    sget-object v1, Lxk0;->k:Landroid/util/SparseArray;

    iget v2, p0, Lok0;->k:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    :cond_0
    iget-object v0, v0, Lxk0;->i:Lwk0;

    .line 19
    iget-object v1, v0, Lwk0;->d:Lok0;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lwk0;->a:Lxk0;

    iget-object v1, v1, Lxk0;->g:Lok0;

    .line 20
    :goto_0
    invoke-static {v1, p0}, Lxk0;->a(Lok0;Lok0;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    iget-object v1, v0, Lwk0;->c:Ljava/lang/Runnable;

    if-nez v1, :cond_3

    .line 22
    invoke-virtual {v0, p0}, Lwk0;->a(Lok0;)V

    goto :goto_1

    .line 23
    :cond_3
    iput-object p0, v0, Lwk0;->d:Lok0;

    :goto_1
    return-void
.end method

.method public static a(Lrk0;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcm0;

    const/4 v1, 0x6

    .line 3
    invoke-virtual {p0}, Lrk0;->a()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcm0;-><init>(ILjava/lang/String;I)V

    const/4 v1, 0x1

    const-string v2, "media"

    .line 4
    invoke-static {v1, v2, v3, v0}, LXl0;->a(ZLjava/lang/String;Ljava/lang/String;Lcm0;)LPl0;

    move-result-object v0

    .line 5
    sget-object v1, LSl0;->a:LTl0;

    .line 6
    invoke-virtual {p0}, Lrk0;->a()I

    move-result v2

    .line 7
    invoke-interface {v0}, LPl0;->b()LOl0;

    move-result-object v0

    .line 8
    iget-object v0, v0, LOl0;->a:Landroid/app/Notification;

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v1, p0, v2, v0, v3}, LTl0;->a(Landroid/app/Service;ILandroid/app/Notification;I)V

    return-void
.end method

.method public static a(Lok0;Lok0;)Z
    .locals 1

    .line 35
    invoke-virtual {p1, p0}, Lok0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lok0;->c:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    iget p1, p1, Lok0;->e:I

    iget p0, p0, Lok0;->e:I

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static b(Landroid/graphics/Bitmap;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v1, 0x72

    if-lt v0, v1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-lt p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic e()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static e(I)Lxk0;
    .locals 1

    .line 2
    sget-object v0, Lxk0;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lxk0;

    return-object p0
.end method

.method public static f()I
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    return v0

    :cond_0
    const/16 v0, 0x200

    return v0
.end method

.method public static g()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    .line 10
    invoke-virtual {p0}, Lxk0;->b()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 11
    sget-object v0, LzT;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    .line 12
    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 4

    .line 36
    iget-object v0, p0, Lxk0;->i:Lwk0;

    .line 37
    iget-object v1, v0, Lwk0;->b:Landroid/os/Handler;

    iget-object v2, v0, Lwk0;->c:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 38
    iput-object v1, v0, Lwk0;->d:Lok0;

    .line 39
    iput-object v1, v0, Lwk0;->c:Ljava/lang/Runnable;

    .line 40
    iget-object v0, p0, Lxk0;->g:Lok0;

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 42
    new-instance v2, LK3;

    invoke-direct {v2, v0}, LK3;-><init>(Landroid/content/Context;)V

    .line 43
    iget-object v0, p0, Lxk0;->g:Lok0;

    iget v0, v0, Lok0;->k:I

    .line 44
    iget-object v2, v2, LK3;->b:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 45
    iget-object v0, p0, Lxk0;->h:LS5;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, v0, LS5;->a:LI5;

    invoke-interface {v0, v1}, LI5;->b(Landroid/app/PendingIntent;)V

    .line 47
    iget-object v0, p0, Lxk0;->h:LS5;

    invoke-virtual {v0, v1}, LS5;->a(LH5;)V

    .line 48
    iget-object v0, p0, Lxk0;->h:LS5;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LS5;->a(Z)V

    .line 49
    iget-object v0, p0, Lxk0;->h:LS5;

    .line 50
    iget-object v0, v0, LS5;->a:LI5;

    invoke-interface {v0}, LI5;->b()V

    .line 51
    iput-object v1, p0, Lxk0;->h:LS5;

    .line 52
    :cond_1
    iget-object v0, p0, Lxk0;->c:Lrk0;

    if-eqz v0, :cond_2

    .line 53
    sget-object v2, LSl0;->a:LTl0;

    const/4 v3, 0x1

    .line 54
    invoke-virtual {v2, v0, v3}, LTl0;->a(Landroid/app/Service;I)V

    .line 55
    iget-object v0, p0, Lxk0;->c:Lrk0;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 56
    :cond_2
    iput-object v1, p0, Lxk0;->g:Lok0;

    .line 57
    iput-object v1, p0, Lxk0;->e:LPl0;

    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 87
    iget-object v0, p0, Lxk0;->g:Lok0;

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget v1, v0, Lok0;->e:I

    if-eq v1, p1, :cond_1

    return-void

    .line 89
    :cond_1
    invoke-virtual {v0}, Lok0;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lxk0;->g:Lok0;

    iget-boolean p1, p1, Lok0;->c:Z

    if-eqz p1, :cond_2

    goto :goto_0

    .line 90
    :cond_2
    iget-object p1, p0, Lxk0;->h:LS5;

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 91
    invoke-virtual {p1, v0}, LS5;->a(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(ZZ)V
    .locals 6

    .line 58
    iget-object v0, p0, Lxk0;->c:Lrk0;

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v1, p0, Lxk0;->g:Lok0;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    .line 60
    invoke-static {v0}, Lxk0;->a(Lrk0;)V

    .line 61
    sget-object p1, LSl0;->a:LTl0;

    .line 62
    iget-object p2, p0, Lxk0;->c:Lrk0;

    invoke-virtual {p1, p2, v2}, LTl0;->a(Landroid/app/Service;I)V

    :cond_1
    return-void

    .line 63
    :cond_2
    invoke-virtual {p0}, Lxk0;->c()V

    .line 64
    invoke-virtual {p0}, Lxk0;->d()V

    .line 65
    iget-object v0, p0, Lxk0;->e:LPl0;

    invoke-interface {v0}, LPl0;->b()LOl0;

    move-result-object v0

    .line 66
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    const/4 v4, 0x0

    if-lt v1, v3, :cond_3

    if-eqz p1, :cond_3

    .line 67
    sget-object p1, LSl0;->a:LTl0;

    .line 68
    iget-object v1, p0, Lxk0;->c:Lrk0;

    iget-object v3, p0, Lxk0;->g:Lok0;

    iget v3, v3, Lok0;->k:I

    .line 69
    iget-object v5, v0, LOl0;->a:Landroid/app/Notification;

    .line 70
    invoke-virtual {p1, v1, v3, v5, v4}, LTl0;->a(Landroid/app/Service;ILandroid/app/Notification;I)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 71
    :goto_0
    iget-object v1, p0, Lxk0;->g:Lok0;

    .line 72
    iget v1, v1, Lok0;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    .line 73
    iget-object v1, p0, Lxk0;->g:Lok0;

    iget-boolean v1, v1, Lok0;->c:Z

    if-eqz v1, :cond_5

    .line 74
    sget-object p1, LSl0;->a:LTl0;

    .line 75
    iget-object v1, p0, Lxk0;->c:Lrk0;

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, LTl0;->a(Landroid/app/Service;I)V

    .line 76
    new-instance p1, Lbm0;

    .line 77
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 78
    invoke-direct {p1, v1}, Lbm0;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {p1, v0}, Lbm0;->a(LOl0;)V

    goto :goto_2

    :cond_5
    if-nez p1, :cond_6

    .line 80
    sget-object p1, LSl0;->a:LTl0;

    .line 81
    iget-object v1, p0, Lxk0;->c:Lrk0;

    iget-object v2, p0, Lxk0;->g:Lok0;

    iget v2, v2, Lok0;->k:I

    .line 82
    iget-object v3, v0, LOl0;->a:Landroid/app/Notification;

    .line 83
    invoke-virtual {p1, v1, v2, v3, v4}, LTl0;->a(Landroid/app/Service;ILandroid/app/Notification;I)V

    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    .line 84
    iget-object p1, p0, Lxk0;->a:Lom0;

    const/4 p2, 0x6

    .line 85
    iget-object v0, v0, LOl0;->a:Landroid/app/Notification;

    .line 86
    invoke-virtual {p1, p2, v0}, Lom0;->a(ILandroid/app/Notification;)V

    :cond_7
    return-void
.end method

.method public b()Landroid/content/Intent;
    .locals 3

    .line 1
    sget-object v0, Lxk0;->l:Landroid/util/SparseArray;

    iget v1, p0, Lxk0;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltk0;

    iget-object v0, v0, Ltk0;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Landroid/content/Intent;

    .line 3
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 4
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public b(I)V
    .locals 1

    .line 7
    iget-object v0, p0, Lxk0;->g:Lok0;

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object v0, v0, Lok0;->m:Lpk0;

    invoke-interface {v0, p1}, Lpk0;->c(I)V

    return-void
.end method

.method public c()V
    .locals 21

    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lxk0;->g:Lok0;

    invoke-virtual {v1}, Lok0;->a()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, v0, Lxk0;->h:LS5;

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-nez v1, :cond_1

    .line 5
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 6
    new-instance v4, LS5;

    const v5, 0x7f13014c

    .line 7
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/content/ComponentName;

    .line 8
    sget-object v7, Lxk0;->l:Landroid/util/SparseArray;

    iget v8, v0, Lxk0;->b:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltk0;

    iget-object v7, v7, Ltk0;->b:Ljava/lang/Class;

    .line 9
    invoke-direct {v6, v1, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v7, 0x0

    invoke-direct {v4, v1, v5, v6, v7}, LS5;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    .line 10
    iget-object v1, v4, LS5;->a:LI5;

    invoke-interface {v1, v3}, LI5;->b(I)V

    .line 11
    iget-object v1, v0, Lxk0;->j:LH5;

    invoke-virtual {v4, v1}, LS5;->a(LH5;)V

    const/4 v1, 0x1

    .line 12
    :try_start_0
    invoke-virtual {v4, v1}, LS5;->a(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v5, 0x0

    .line 13
    invoke-virtual {v4, v5}, LS5;->a(Z)V

    .line 14
    iget-object v5, v4, LS5;->a:LI5;

    invoke-interface {v5, v2}, LI5;->b(I)V

    .line 15
    invoke-virtual {v4, v1}, LS5;->a(Z)V

    .line 16
    :goto_0
    iput-object v4, v0, Lxk0;->h:LS5;

    .line 17
    :cond_1
    iget-object v1, v0, Lxk0;->g:Lok0;

    iget v1, v1, Lok0;->e:I

    invoke-virtual {v0, v1}, Lxk0;->a(I)V

    .line 18
    :try_start_1
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 19
    invoke-static {v1}, Lrb;->a(Landroid/content/Context;)Lrb;

    move-result-object v1

    iget-object v4, v0, Lxk0;->h:LS5;

    invoke-virtual {v1, v4}, Lrb;->a(LS5;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    .line 20
    :catch_1
    iget-object v1, v0, Lxk0;->h:LS5;

    .line 21
    new-instance v4, LQ4;

    invoke-direct {v4}, LQ4;-><init>()V

    .line 22
    iget-object v5, v0, Lxk0;->g:Lok0;

    iget-boolean v6, v5, Lok0;->f:Z

    if-eqz v6, :cond_2

    invoke-virtual {v4}, LQ4;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v4

    goto :goto_1

    .line 23
    :cond_2
    iget-object v5, v5, Lok0;->b:Lorg/chromium/services/media_session/MediaMetadata;

    .line 24
    iget-object v5, v5, Lorg/chromium/services/media_session/MediaMetadata;->a:Ljava/lang/String;

    const-string v6, "android.media.metadata.TITLE"

    .line 25
    invoke-virtual {v4, v6, v5}, LQ4;->a(Ljava/lang/String;Ljava/lang/String;)LQ4;

    .line 26
    iget-object v5, v0, Lxk0;->g:Lok0;

    iget-object v5, v5, Lok0;->d:Ljava/lang/String;

    const-string v6, "android.media.metadata.ARTIST"

    invoke-virtual {v4, v6, v5}, LQ4;->a(Ljava/lang/String;Ljava/lang/String;)LQ4;

    .line 27
    iget-object v5, v0, Lxk0;->g:Lok0;

    iget-object v5, v5, Lok0;->b:Lorg/chromium/services/media_session/MediaMetadata;

    .line 28
    iget-object v5, v5, Lorg/chromium/services/media_session/MediaMetadata;->b:Ljava/lang/String;

    .line 29
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 30
    iget-object v5, v0, Lxk0;->g:Lok0;

    iget-object v5, v5, Lok0;->b:Lorg/chromium/services/media_session/MediaMetadata;

    .line 31
    iget-object v5, v5, Lorg/chromium/services/media_session/MediaMetadata;->b:Ljava/lang/String;

    .line 32
    invoke-virtual {v4, v6, v5}, LQ4;->a(Ljava/lang/String;Ljava/lang/String;)LQ4;

    .line 33
    :cond_3
    iget-object v5, v0, Lxk0;->g:Lok0;

    iget-object v5, v5, Lok0;->b:Lorg/chromium/services/media_session/MediaMetadata;

    .line 34
    iget-object v5, v5, Lorg/chromium/services/media_session/MediaMetadata;->c:Ljava/lang/String;

    .line 35
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 36
    iget-object v5, v0, Lxk0;->g:Lok0;

    iget-object v5, v5, Lok0;->b:Lorg/chromium/services/media_session/MediaMetadata;

    .line 37
    iget-object v5, v5, Lorg/chromium/services/media_session/MediaMetadata;->c:Ljava/lang/String;

    const-string v6, "android.media.metadata.ALBUM"

    .line 38
    invoke-virtual {v4, v6, v5}, LQ4;->a(Ljava/lang/String;Ljava/lang/String;)LQ4;

    .line 39
    :cond_4
    iget-object v5, v0, Lxk0;->g:Lok0;

    iget-object v5, v5, Lok0;->j:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_5

    const-string v6, "android.media.metadata.ALBUM_ART"

    .line 40
    invoke-virtual {v4, v6, v5}, LQ4;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)LQ4;

    .line 41
    :cond_5
    iget-object v5, v0, Lxk0;->g:Lok0;

    iget-object v5, v5, Lok0;->o:Lorg/chromium/services/media_session/MediaPosition;

    if-eqz v5, :cond_6

    .line 42
    iget-object v5, v5, Lorg/chromium/services/media_session/MediaPosition;->a:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v7, "android.media.metadata.DURATION"

    .line 43
    invoke-virtual {v4, v7, v5, v6}, LQ4;->a(Ljava/lang/String;J)LQ4;

    .line 44
    :cond_6
    invoke-virtual {v4}, LQ4;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v4

    .line 45
    :goto_1
    iget-object v1, v1, LS5;->a:LI5;

    invoke-interface {v1, v4}, LI5;->a(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 46
    iget-object v1, v0, Lxk0;->h:LS5;

    .line 47
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v18, -0x1

    const-wide/16 v4, 0x6

    .line 48
    iget-object v6, v0, Lxk0;->g:Lok0;

    iget-object v6, v6, Lok0;->n:Ljava/util/Set;

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 50
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-wide/16 v4, 0x16

    .line 51
    :cond_7
    iget-object v6, v0, Lxk0;->g:Lok0;

    iget-object v6, v6, Lok0;->n:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-wide/16 v6, 0x20

    or-long/2addr v4, v6

    .line 52
    :cond_8
    iget-object v6, v0, Lxk0;->g:Lok0;

    iget-object v6, v6, Lok0;->n:Ljava/util/Set;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-wide/16 v6, 0x40

    or-long/2addr v4, v6

    .line 53
    :cond_9
    iget-object v6, v0, Lxk0;->g:Lok0;

    iget-object v6, v6, Lok0;->n:Ljava/util/Set;

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-wide/16 v6, 0x8

    or-long/2addr v4, v6

    .line 54
    :cond_a
    iget-object v6, v0, Lxk0;->g:Lok0;

    iget-object v6, v6, Lok0;->n:Ljava/util/Set;

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-wide/16 v6, 0x100

    or-long/2addr v4, v6

    :cond_b
    move-wide v11, v4

    .line 55
    iget-object v4, v0, Lxk0;->g:Lok0;

    iget-boolean v4, v4, Lok0;->c:Z

    if-eqz v4, :cond_c

    const/4 v5, 0x2

    goto :goto_2

    :cond_c
    const/4 v5, 0x3

    .line 56
    :goto_2
    iget-object v2, v0, Lxk0;->g:Lok0;

    iget-object v2, v2, Lok0;->o:Lorg/chromium/services/media_session/MediaPosition;

    if-eqz v2, :cond_d

    .line 57
    iget-object v2, v2, Lorg/chromium/services/media_session/MediaPosition;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 58
    iget-object v4, v0, Lxk0;->g:Lok0;

    iget-object v4, v4, Lok0;->o:Lorg/chromium/services/media_session/MediaPosition;

    .line 59
    iget-object v4, v4, Lorg/chromium/services/media_session/MediaPosition;->c:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 60
    iget-object v6, v0, Lxk0;->g:Lok0;

    iget-object v6, v6, Lok0;->o:Lorg/chromium/services/media_session/MediaPosition;

    .line 61
    iget-object v6, v6, Lorg/chromium/services/media_session/MediaPosition;->d:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move v10, v4

    move-wide v15, v6

    goto :goto_3

    :cond_d
    const-wide/16 v2, -0x1

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/high16 v4, 0x3f800000    # 1.0f

    move-wide v15, v6

    const/high16 v10, 0x3f800000    # 1.0f

    :goto_3
    move-wide v6, v2

    .line 63
    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat;

    move-object v4, v2

    const/16 v20, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v4 .. v20}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    .line 64
    iget-object v1, v1, LS5;->a:LI5;

    invoke-interface {v1, v2}, LI5;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxk0;->g:Lok0;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lok0;->c:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lok0;->m:Lpk0;

    invoke-interface {v0, p1}, Lpk0;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()V
    .locals 13

    .line 3
    new-instance v0, Lcm0;

    iget-object v1, p0, Lxk0;->g:Lok0;

    iget v1, v1, Lok0;->k:I

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcm0;-><init>(ILjava/lang/String;I)V

    const-string v1, "media"

    const/4 v2, 0x1

    .line 4
    invoke-static {v2, v1, v3, v0}, LXl0;->a(ZLjava/lang/String;Ljava/lang/String;Lcm0;)LPl0;

    move-result-object v0

    iput-object v0, p0, Lxk0;->e:LPl0;

    .line 5
    iget-object v1, p0, Lxk0;->g:Lok0;

    iget-boolean v4, v1, Lok0;->f:Z

    if-eqz v4, :cond_1

    .line 6
    invoke-static {}, Lxk0;->g()Z

    move-result v1

    const v4, 0x7f1303b0

    if-eqz v1, :cond_0

    .line 7
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, LPl0;->d(Ljava/lang/CharSequence;)LPl0;

    .line 9
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f130429

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, LPl0;->a(Ljava/lang/CharSequence;)LPl0;

    goto/16 :goto_3

    .line 12
    :cond_0
    sget-object v1, LzT;->a:Landroid/content/Context;

    const v5, 0x7f13014c

    .line 13
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, LPl0;->d(Ljava/lang/CharSequence;)LPl0;

    move-result-object v1

    .line 14
    sget-object v5, LzT;->a:Landroid/content/Context;

    .line 15
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, LPl0;->c(Ljava/lang/CharSequence;)LPl0;

    goto :goto_3

    .line 16
    :cond_1
    iget-object v1, v1, Lok0;->b:Lorg/chromium/services/media_session/MediaMetadata;

    .line 17
    iget-object v1, v1, Lorg/chromium/services/media_session/MediaMetadata;->a:Ljava/lang/String;

    .line 18
    invoke-interface {v0, v1}, LPl0;->d(Ljava/lang/CharSequence;)LPl0;

    .line 19
    iget-object v1, p0, Lxk0;->g:Lok0;

    iget-object v1, v1, Lok0;->b:Lorg/chromium/services/media_session/MediaMetadata;

    .line 20
    iget-object v4, v1, Lorg/chromium/services/media_session/MediaMetadata;->b:Ljava/lang/String;

    const-string v5, ""

    if-nez v4, :cond_2

    move-object v4, v5

    .line 21
    :cond_2
    iget-object v1, v1, Lorg/chromium/services/media_session/MediaMetadata;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    move-object v1, v5

    .line 22
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    const-string v5, " - "

    .line 23
    invoke-static {v4, v5, v1}, LZi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 24
    :cond_5
    :goto_0
    invoke-static {v4, v1}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    :goto_1
    invoke-static {}, Lxk0;->g()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_2

    .line 26
    :cond_6
    iget-object v1, p0, Lxk0;->g:Lok0;

    iget-object v1, v1, Lok0;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, LPl0;->c(Ljava/lang/CharSequence;)LPl0;

    goto :goto_3

    .line 27
    :cond_7
    :goto_2
    invoke-interface {v0, v1}, LPl0;->c(Ljava/lang/CharSequence;)LPl0;

    .line 28
    iget-object v1, p0, Lxk0;->g:Lok0;

    iget-object v1, v1, Lok0;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, LPl0;->a(Ljava/lang/CharSequence;)LPl0;

    .line 29
    :goto_3
    iget-object v1, p0, Lxk0;->g:Lok0;

    invoke-virtual {v1}, Lok0;->a()Z

    move-result v1

    if-nez v1, :cond_8

    .line 30
    invoke-interface {v0, v3}, LPl0;->a(Landroid/graphics/Bitmap;)LPl0;

    goto :goto_4

    .line 31
    :cond_8
    iget-object v1, p0, Lxk0;->g:Lok0;

    iget-object v3, v1, Lok0;->h:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_9

    iget-boolean v1, v1, Lok0;->f:Z

    if-nez v1, :cond_9

    .line 32
    invoke-interface {v0, v3}, LPl0;->a(Landroid/graphics/Bitmap;)LPl0;

    goto :goto_4

    .line 33
    :cond_9
    invoke-static {}, Lxk0;->g()Z

    move-result v1

    if-nez v1, :cond_b

    .line 34
    iget-object v1, p0, Lxk0;->f:Landroid/graphics/Bitmap;

    if-nez v1, :cond_a

    iget-object v1, p0, Lxk0;->g:Lok0;

    iget v1, v1, Lok0;->i:I

    if-eqz v1, :cond_a

    .line 35
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 36
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lxk0;->g:Lok0;

    iget v3, v3, Lok0;->i:I

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 37
    invoke-static {v1}, Lxk0;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lxk0;->f:Landroid/graphics/Bitmap;

    .line 38
    :cond_a
    iget-object v1, p0, Lxk0;->f:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, LPl0;->a(Landroid/graphics/Bitmap;)LPl0;

    .line 39
    :cond_b
    :goto_4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 40
    iget-object v3, p0, Lxk0;->g:Lok0;

    invoke-virtual {v3}, Lok0;->a()Z

    move-result v3

    const/4 v4, 0x0

    .line 41
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v3, :cond_d

    .line 43
    iget-object v3, p0, Lxk0;->g:Lok0;

    iget-object v3, v3, Lok0;->n:Ljava/util/Set;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 44
    iget-object v3, p0, Lxk0;->g:Lok0;

    iget-boolean v3, v3, Lok0;->c:Z

    if-eqz v3, :cond_c

    .line 45
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 47
    :cond_c
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_d
    :goto_5
    iget-object v3, p0, Lxk0;->g:Lok0;

    .line 50
    iget v3, v3, Lok0;->a:I

    const/4 v7, 0x2

    and-int/2addr v3, v7

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    goto :goto_6

    :cond_e
    const/4 v3, 0x0

    :goto_6
    const/4 v8, 0x7

    if-eqz v3, :cond_f

    .line 51
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 52
    :cond_f
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_7
    new-array v3, v8, [I

    .line 53
    fill-array-data v3, :array_0

    .line 54
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v8, :cond_11

    .line 55
    aget v11, v3, v10

    .line 56
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 57
    :cond_11
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 58
    iget-object v10, p0, Lxk0;->d:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk0;

    .line 59
    iget v10, v3, Lsk0;->a:I

    .line 60
    sget-object v11, LzT;->a:Landroid/content/Context;

    .line 61
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v12, v3, Lsk0;->b:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v3, v3, Lsk0;->c:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, v3}, Lxk0;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 63
    invoke-interface {v0, v10, v11, v3}, LPl0;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)LPl0;

    goto :goto_9

    .line 64
    :cond_12
    iget-object v1, p0, Lxk0;->g:Lok0;

    invoke-virtual {v1}, Lok0;->a()Z

    move-result v1

    const/4 v3, 0x4

    if-eqz v1, :cond_1a

    .line 65
    iget-object v1, p0, Lxk0;->h:LS5;

    .line 66
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x3

    if-gt v10, v11, :cond_13

    .line 67
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [I

    const/4 v6, 0x0

    .line 68
    :goto_a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_19

    aput v6, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 69
    :cond_13
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 70
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 72
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_14
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-static {v6}, LsT;->a(Ljava/util/List;)[I

    move-result-object v5

    goto :goto_e

    :cond_15
    new-array v8, v11, [I

    .line 75
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 76
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 77
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    aput v10, v8, v4

    .line 78
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 79
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    aput v5, v8, v2

    goto :goto_b

    .line 80
    :cond_16
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    aput v5, v8, v2

    .line 81
    :goto_b
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    aput v5, v8, v7

    goto :goto_d

    .line 82
    :cond_17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    aput v10, v8, v4

    .line 83
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 84
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    aput v5, v8, v2

    goto :goto_c

    .line 85
    :cond_18
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    aput v5, v8, v2

    :goto_c
    const/4 v5, 0x5

    .line 86
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    aput v5, v8, v7

    :goto_d
    move-object v5, v8

    :cond_19
    :goto_e
    const-string v6, "MediaNotificationManager.ListenerService.CANCEL"

    .line 87
    invoke-virtual {p0, v6}, Lxk0;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 88
    invoke-interface {v0, v1, v5, v6, v2}, LPl0;->a(LS5;[ILandroid/app/PendingIntent;Z)LPl0;

    .line 89
    :cond_1a
    iget-object v0, p0, Lxk0;->e:LPl0;

    invoke-interface {v0, v4}, LPl0;->b(Z)LPl0;

    move-result-object v0

    const-wide/16 v5, 0x0

    invoke-interface {v0, v5, v6}, LPl0;->a(J)LPl0;

    .line 90
    iget-object v0, p0, Lxk0;->e:LPl0;

    iget-object v1, p0, Lxk0;->g:Lok0;

    iget v1, v1, Lok0;->g:I

    invoke-interface {v0, v1}, LPl0;->c(I)LPl0;

    .line 91
    iget-object v0, p0, Lxk0;->e:LPl0;

    invoke-interface {v0, v4}, LPl0;->f(Z)LPl0;

    .line 92
    iget-object v0, p0, Lxk0;->e:LPl0;

    invoke-interface {v0, v2}, LPl0;->c(Z)LPl0;

    .line 93
    iget-object v0, p0, Lxk0;->e:LPl0;

    .line 94
    sget-object v1, Lxk0;->l:Landroid/util/SparseArray;

    iget v5, p0, Lxk0;->b:I

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltk0;

    iget-object v1, v1, Ltk0;->c:Ljava/lang/String;

    .line 95
    invoke-interface {v0, v1}, LPl0;->c(Ljava/lang/String;)LPl0;

    .line 96
    iget-object v0, p0, Lxk0;->e:LPl0;

    invoke-interface {v0, v2}, LPl0;->e(Z)LPl0;

    .line 97
    iget-object v0, p0, Lxk0;->g:Lok0;

    .line 98
    iget v0, v0, Lok0;->a:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1b

    const/4 v4, 0x1

    :cond_1b
    if-eqz v4, :cond_1c

    .line 99
    iget-object v0, p0, Lxk0;->e:LPl0;

    iget-object v1, p0, Lxk0;->g:Lok0;

    iget-boolean v1, v1, Lok0;->c:Z

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, LPl0;->d(Z)LPl0;

    .line 100
    iget-object v0, p0, Lxk0;->e:LPl0;

    const-string v1, "MediaNotificationManager.ListenerService.SWIPE"

    invoke-virtual {p0, v1}, Lxk0;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-interface {v0, v1}, LPl0;->b(Landroid/app/PendingIntent;)LPl0;

    .line 101
    :cond_1c
    iget-object v0, p0, Lxk0;->g:Lok0;

    iget-object v1, v0, Lok0;->l:Landroid/content/Intent;

    if-eqz v1, :cond_1d

    .line 102
    iget-object v3, p0, Lxk0;->e:LPl0;

    .line 103
    sget-object v4, LzT;->a:Landroid/content/Context;

    .line 104
    iget v0, v0, Lok0;->e:I

    const/high16 v5, 0x8000000

    invoke-static {v4, v0, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-interface {v3, v0}, LPl0;->a(Landroid/app/PendingIntent;)LPl0;

    .line 105
    :cond_1d
    iget-object v0, p0, Lxk0;->e:LPl0;

    .line 106
    iget-object v1, p0, Lxk0;->g:Lok0;

    iget-boolean v1, v1, Lok0;->f:Z

    xor-int/2addr v1, v2

    .line 107
    invoke-interface {v0, v1}, LPl0;->a(I)LPl0;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x4
        0x0
        0x1
        0x5
        0x3
        0x7
    .end array-data
.end method

.method public d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxk0;->g:Lok0;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lok0;->c:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lok0;->m:Lpk0;

    invoke-interface {v0, p1}, Lpk0;->d(I)V

    :cond_1
    :goto_0
    return-void
.end method
