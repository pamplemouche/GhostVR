.class public LDk0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkk0;


# instance fields
.field public a:Lorg/chromium/chrome/browser/tab/Tab;

.field public b:LIa0;

.field public c:Landroid/graphics/Bitmap;

.field public d:Landroid/graphics/Bitmap;

.field public e:Z

.field public f:Landroid/graphics/Bitmap;

.field public g:Ljava/lang/String;

.field public h:LP01;

.field public i:I

.field public j:Lnk0;

.field public k:Ljava/lang/String;

.field public l:Lorg/chromium/services/media_session/MediaMetadata;

.field public m:Lorg/chromium/services/media_session/MediaMetadata;

.field public n:Llk0;

.field public o:Ljava/util/Set;

.field public p:Lorg/chromium/services/media_session/MediaPosition;

.field public q:Landroid/os/Handler;

.field public r:Ljava/lang/Runnable;

.field public s:Lpk0;

.field public final t:LpH0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, LDk0;->i:I

    .line 3
    new-instance v0, Lyk0;

    invoke-direct {v0, p0}, Lyk0;-><init>(LDk0;)V

    iput-object v0, p0, LDk0;->s:Lpk0;

    .line 4
    new-instance v0, LBk0;

    invoke-direct {v0, p0}, LBk0;-><init>(LDk0;)V

    iput-object v0, p0, LDk0;->t:LpH0;

    .line 5
    iput-object p1, p0, LDk0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 6
    iget-object v1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v1, v0}, LWT;->a(Ljava/lang/Object;)Z

    .line 7
    new-instance v0, Llk0;

    const/16 v1, 0x72

    .line 8
    invoke-static {}, Lxk0;->f()I

    move-result v2

    invoke-direct {v0, v1, v2}, Llk0;-><init>(II)V

    iput-object v0, p0, LDk0;->n:Llk0;

    .line 9
    iget-object v0, p0, LDk0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 10
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 11
    invoke-virtual {p0, p1}, LDk0;->a(Lorg/chromium/content_public/browser/WebContents;)V

    .line 12
    :cond_0
    iget-object p1, p0, LDk0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p0, p1}, LDk0;->a(Lorg/chromium/chrome/browser/tab/Tab;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result p1

    iput p1, p0, LDk0;->i:I

    .line 14
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, LDk0;->q:Landroid/os/Handler;

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 v0, 0x3ea

    if-ne p0, v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0
.end method

.method public static synthetic a(LDk0;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\u25b6"

    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    .line 15
    throw p0
.end method

.method public static synthetic a(LDk0;)V
    .locals 2

    .line 25
    invoke-virtual {p0}, LDk0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, LDk0;->a()Lorg/chromium/services/media_session/MediaMetadata;

    move-result-object v0

    .line 27
    iget-object v1, p0, LDk0;->m:Lorg/chromium/services/media_session/MediaMetadata;

    invoke-virtual {v1, v0}, Lorg/chromium/services/media_session/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 28
    :cond_1
    iput-object v0, p0, LDk0;->m:Lorg/chromium/services/media_session/MediaMetadata;

    .line 29
    iget-object v1, p0, LDk0;->j:Lnk0;

    .line 30
    iput-object v0, v1, Lnk0;->a:Lorg/chromium/services/media_session/MediaMetadata;

    .line 31
    invoke-virtual {p0}, LDk0;->d()V

    :goto_0
    return-void
.end method

.method public static synthetic a(LDk0;Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, LDk0;->e:Z

    .line 17
    invoke-virtual {p0}, LDk0;->c()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, LDk0;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {p1}, Lxk0;->b(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 20
    :cond_3
    iget-object v0, p0, LDk0;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, LDk0;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, LDk0;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_4

    goto :goto_0

    .line 22
    :cond_4
    invoke-static {p1}, Lxk0;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, LDk0;->d:Landroid/graphics/Bitmap;

    .line 23
    invoke-virtual {p0, p1}, LDk0;->a(Landroid/graphics/Bitmap;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    const/4 p0, 0x0

    .line 24
    throw p0
.end method

.method public static synthetic b(LDk0;)V
    .locals 3

    .line 1
    iget-object v0, p0, LDk0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, LDk0;->r:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v2, p0, LDk0;->q:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iput-object v1, p0, LDk0;->r:Ljava/lang/Runnable;

    .line 5
    :cond_1
    invoke-virtual {p0}, LDk0;->b()V

    .line 6
    iput-object v1, p0, LDk0;->j:Lnk0;

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lorg/chromium/chrome/browser/tab/Tab;)Landroid/app/Activity;
    .locals 0

    .line 56
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 57
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    return-object p1
.end method

.method public final a()Lorg/chromium/services/media_session/MediaMetadata;
    .locals 4

    .line 32
    iget-object v0, p0, LDk0;->k:Ljava/lang/String;

    .line 33
    iget-object v1, p0, LDk0;->l:Lorg/chromium/services/media_session/MediaMetadata;

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 34
    iget-object v1, v1, Lorg/chromium/services/media_session/MediaMetadata;->a:Ljava/lang/String;

    .line 35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, LDk0;->l:Lorg/chromium/services/media_session/MediaMetadata;

    return-object v0

    .line 36
    :cond_0
    iget-object v1, p0, LDk0;->l:Lorg/chromium/services/media_session/MediaMetadata;

    .line 37
    iget-object v2, v1, Lorg/chromium/services/media_session/MediaMetadata;->b:Ljava/lang/String;

    .line 38
    iget-object v1, v1, Lorg/chromium/services/media_session/MediaMetadata;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 39
    :goto_0
    iget-object v3, p0, LDk0;->m:Lorg/chromium/services/media_session/MediaMetadata;

    if-eqz v3, :cond_2

    .line 40
    iget-object v3, v3, Lorg/chromium/services/media_session/MediaMetadata;->a:Ljava/lang/String;

    .line 41
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, LDk0;->m:Lorg/chromium/services/media_session/MediaMetadata;

    .line 42
    iget-object v3, v3, Lorg/chromium/services/media_session/MediaMetadata;->b:Ljava/lang/String;

    .line 43
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, LDk0;->m:Lorg/chromium/services/media_session/MediaMetadata;

    .line 44
    iget-object v3, v3, Lorg/chromium/services/media_session/MediaMetadata;->c:Ljava/lang/String;

    .line 45
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 46
    iget-object v0, p0, LDk0;->m:Lorg/chromium/services/media_session/MediaMetadata;

    return-object v0

    .line 47
    :cond_2
    new-instance v3, Lorg/chromium/services/media_session/MediaMetadata;

    invoke-direct {v3, v0, v2, v1}, Lorg/chromium/services/media_session/MediaMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 48
    iget-object v0, p0, LDk0;->f:Landroid/graphics/Bitmap;

    if-ne v0, p1, :cond_0

    return-void

    .line 49
    :cond_0
    iput-object p1, p0, LDk0;->f:Landroid/graphics/Bitmap;

    .line 50
    invoke-virtual {p0}, LDk0;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 51
    :cond_1
    iget-object p1, p0, LDk0;->j:Lnk0;

    iget-object v0, p0, LDk0;->f:Landroid/graphics/Bitmap;

    .line 52
    iput-object v0, p1, Lnk0;->g:Landroid/graphics/Bitmap;

    .line 53
    iget-object v0, p0, LDk0;->c:Landroid/graphics/Bitmap;

    .line 54
    iput-object v0, p1, Lnk0;->i:Landroid/graphics/Bitmap;

    .line 55
    invoke-virtual {p0}, LDk0;->d()V

    return-void
.end method

.method public final a(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    .line 1
    invoke-static {p1}, LJ/N;->Mtun$qW8(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/MediaSessionImpl;

    .line 2
    iget-object v1, p0, LDk0;->h:LP01;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, LP01;->a:Lorg/chromium/content/browser/MediaSessionImpl;

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, LDk0;->h:LP01;

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1}, LP01;->b()V

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, LDk0;->h:LP01;

    .line 7
    iput-object v1, p0, LDk0;->o:Ljava/util/Set;

    .line 8
    :goto_0
    iget-object v1, p0, LDk0;->n:Llk0;

    .line 9
    iput-object p1, v1, Llk0;->a:Lorg/chromium/content_public/browser/WebContents;

    .line 10
    invoke-virtual {v1}, Llk0;->a()V

    if-eqz v0, :cond_2

    .line 11
    new-instance p1, LAk0;

    invoke-direct {p1, p0, v0}, LAk0;-><init>(LDk0;LO01;)V

    .line 12
    iput-object p1, p0, LDk0;->h:LP01;

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 3

    .line 7
    iget-object v0, p0, LDk0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    const v1, 0x7f0b025b

    .line 8
    invoke-static {v1}, Lxk0;->e(I)Lxk0;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, v1, Lxk0;->g:Lok0;

    if-eqz v2, :cond_2

    iget v2, v2, Lok0;->e:I

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v1}, Lxk0;->a()V

    .line 11
    :cond_2
    :goto_0
    iget-object v0, p0, LDk0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p0, v0}, LDk0;->a(Lorg/chromium/chrome/browser/tab/Tab;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    iget v1, p0, LDk0;->i:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    :cond_3
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, LDk0;->j:Lnk0;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, LDk0;->r:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, LDk0;->q:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, LDk0;->r:Ljava/lang/Runnable;

    .line 4
    :cond_0
    iget-object v0, p0, LDk0;->j:Lnk0;

    invoke-virtual {v0}, Lnk0;->a()Lok0;

    move-result-object v0

    invoke-static {v0}, Lxk0;->a(Lok0;)V

    return-void
.end method
