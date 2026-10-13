.class public Lorg/chromium/chrome/browser/preferences/PrefChangeRegistrar;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/util/SparseArray;

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/PrefChangeRegistrar;->a:Landroid/util/SparseArray;

    .line 3
    invoke-static {p0}, LJ/N;->MiTdj3xP(Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iput-wide v0, p0, Lorg/chromium/chrome/browser/preferences/PrefChangeRegistrar;->b:J

    return-void
.end method

.method private onPreferenceChange(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/PrefChangeRegistrar;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Luy0;

    check-cast p1, Lqb0;

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object p1

    if-eqz p1, :cond_9

    const/4 v1, 0x2

    .line 3
    invoke-static {p1, v1}, LJ/N;->MVEXC539(Ljava/lang/Object;I)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    new-array v2, p1, [Ljava/lang/Object;

    const-string v3, "FeedProcessScopeFtry"

    const-string v4, "Disabling Feed because of policy."

    .line 4
    invoke-static {v3, v4, v2}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 5
    sput-boolean v2, Lsb0;->a:Z

    .line 6
    sget-object v2, Lsb0;->b:Lorg/chromium/chrome/browser/preferences/PrefChangeRegistrar;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_2

    .line 7
    iget-object v5, v2, Lorg/chromium/chrome/browser/preferences/PrefChangeRegistrar;->a:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Luy0;

    if-nez v5, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v5, v2, Lorg/chromium/chrome/browser/preferences/PrefChangeRegistrar;->a:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 9
    iget-wide v5, v2, Lorg/chromium/chrome/browser/preferences/PrefChangeRegistrar;->b:J

    .line 10
    invoke-static {v5, v6, v2, v1}, LJ/N;->M0E$fVRB(JLjava/lang/Object;I)V

    .line 11
    :goto_0
    sget-object v1, Lsb0;->b:Lorg/chromium/chrome/browser/preferences/PrefChangeRegistrar;

    .line 12
    iget-wide v5, v1, Lorg/chromium/chrome/browser/preferences/PrefChangeRegistrar;->b:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    .line 13
    invoke-static {v5, v6, v1}, LJ/N;->Mn0XciAY(JLjava/lang/Object;)V

    .line 14
    :cond_1
    iput-wide v3, v1, Lorg/chromium/chrome/browser/preferences/PrefChangeRegistrar;->b:J

    .line 15
    sput-object v0, Lsb0;->b:Lorg/chromium/chrome/browser/preferences/PrefChangeRegistrar;

    .line 16
    :cond_2
    sget-object v1, Lsb0;->d:Liw;

    if-eqz v1, :cond_3

    .line 17
    check-cast v1, Lkx;

    :try_start_0
    const-string v2, "FeedProcessScope"

    const-string v5, "FeedProcessScope onDestroy called"

    new-array p1, p1, [Ljava/lang/Object;

    .line 18
    invoke-static {v2, v5, p1}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    iget-object p1, v1, Lkx;->a:Ltw;

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 20
    iget-object p1, v1, Lkx;->g:LFx;

    invoke-virtual {p1}, LFx;->h()V

    .line 21
    iget-object p1, v1, Lkx;->g:LFx;

    invoke-virtual {p1}, LFx;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :catch_0
    sput-object v0, Lsb0;->d:Liw;

    .line 23
    :cond_3
    sget-object p1, Lsb0;->e:Lwb0;

    if-eqz p1, :cond_4

    .line 24
    invoke-interface {p1}, Lwb0;->destroy()V

    .line 25
    sput-object v0, Lsb0;->e:Lwb0;

    .line 26
    :cond_4
    sget-object p1, Lsb0;->f:Lpb0;

    if-eqz p1, :cond_5

    .line 27
    invoke-interface {p1}, Lpb0;->destroy()V

    .line 28
    sput-object v0, Lsb0;->f:Lpb0;

    .line 29
    :cond_5
    sget-object p1, Lsb0;->c:LLa0;

    if-eqz p1, :cond_6

    .line 30
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v1

    .line 31
    iget-object v1, v1, Lorg/chromium/chrome/browser/signin/SigninManager;->f:LWT;

    invoke-virtual {v1, p1}, LWT;->b(Ljava/lang/Object;)Z

    .line 32
    invoke-static {p1}, Lorg/chromium/base/ApplicationStatus;->a(LkT;)V

    .line 33
    iget-object v1, p1, LLa0;->x:Lorg/chromium/chrome/browser/feed/FeedLifecycleBridge;

    .line 34
    iget-wide v5, v1, Lorg/chromium/chrome/browser/feed/FeedLifecycleBridge;->a:J

    .line 35
    invoke-static {v5, v6, v1}, LJ/N;->M9cP0d9G(JLjava/lang/Object;)V

    .line 36
    iput-wide v3, v1, Lorg/chromium/chrome/browser/feed/FeedLifecycleBridge;->a:J

    .line 37
    iput-object v0, p1, LLa0;->x:Lorg/chromium/chrome/browser/feed/FeedLifecycleBridge;

    .line 38
    iput-object v0, p1, LLa0;->w:Lgw;

    .line 39
    iput-object v0, p1, LLa0;->y:Lwb0;

    .line 40
    sput-object v0, Lsb0;->c:LLa0;

    .line 41
    :cond_6
    sget-object p1, Lsb0;->g:Lmb0;

    if-eqz p1, :cond_8

    .line 42
    iget-wide v1, p1, Lmb0;->a:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_7

    goto :goto_1

    .line 43
    :cond_7
    invoke-static {v1, v2, p1}, LJ/N;->MS58lOx7(JLjava/lang/Object;)V

    .line 44
    iput-wide v3, p1, Lmb0;->a:J

    .line 45
    :goto_1
    sput-object v0, Lsb0;->g:Lmb0;

    :cond_8
    return-void

    .line 46
    :cond_9
    throw v0

    .line 47
    :cond_a
    throw v0
.end method
