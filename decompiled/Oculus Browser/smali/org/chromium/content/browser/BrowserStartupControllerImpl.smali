.class public Lorg/chromium/content/browser/BrowserStartupControllerImpl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LF01;


# static fields
.field public static m:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

.field public static n:Z


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Lorg/chromium/content/browser/TracingControllerAndroidImpl;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->i:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->a:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->b:Ljava/util/List;

    .line 5
    iput p1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->h:I

    .line 6
    invoke-static {}, Lorg/chromium/base/BuildInfo;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    sget-object p1, LZ01;->a:LFW;

    new-instance v0, LMV0;

    invoke-direct {v0, p0}, LMV0;-><init>(Lorg/chromium/content/browser/BrowserStartupControllerImpl;)V

    const-wide/16 v1, 0x0

    .line 8
    invoke-static {p1, v0, v1, v2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public static browserStartupComplete(I)V
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->m:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->b(I)V

    :cond_0
    return-void
.end method

.method public static serviceManagerStartupComplete()V
    .locals 3

    .line 1
    sget-object v0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->m:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->k:Z

    .line 3
    iget-boolean v2, v0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->j:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->i:I

    .line 5
    invoke-virtual {v0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->c()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->a(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget v2, v0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->i:I

    if-ne v2, v1, :cond_1

    const/4 v1, -0x1

    .line 7
    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->c(I)V

    .line 8
    :cond_1
    invoke-virtual {v0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->d()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static shouldStartGpuProcessOnBrowserStartup()Z
    .locals 1

    .line 1
    sget-boolean v0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->n:Z

    return v0
.end method


# virtual methods
.method public a(Z)I
    .locals 2

    .line 23
    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->f:Z

    iget-boolean v1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->k:Z

    invoke-static {v0, v1, p1}, LHW0;->a(ZZZ)I

    move-result p1

    return p1
.end method

.method public final a(I)V
    .locals 4

    .line 24
    sget-object v0, LZ01;->e:LFW;

    new-instance v1, LOV0;

    invoke-direct {v1, p0, p1}, LOV0;-><init>(Lorg/chromium/content/browser/BrowserStartupControllerImpl;I)V

    const-wide/16 v2, 0x0

    .line 25
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public a(LE01;)V
    .locals 4

    .line 18
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 19
    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->f:Z

    if-eqz v0, :cond_0

    .line 20
    sget-object v0, LZ01;->e:LFW;

    new-instance v1, LPV0;

    invoke-direct {v1, p0, p1}, LPV0;-><init>(Lorg/chromium/content/browser/BrowserStartupControllerImpl;LE01;)V

    const-wide/16 v2, 0x0

    .line 21
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public a(ZLjava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "cr.BrowserStartup"

    const-string v2, "Initializing chromium process, singleProcess=%b"

    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 28
    :try_start_0
    sget-object v1, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 29
    iget v2, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->h:I

    invoke-virtual {v1, v2}, Lorg/chromium/base/library_loader/LibraryLoader;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 31
    new-instance v0, LQV0;

    invoke-direct {v0, p0, p1, p2}, LQV0;-><init>(Lorg/chromium/content/browser/BrowserStartupControllerImpl;ZLjava/lang/Runnable;)V

    .line 32
    invoke-static {}, LFe1;->b()LFe1;

    move-result-object p1

    sget-object v1, LZ01;->e:LFW;

    .line 33
    iput-object v1, p1, LFe1;->b:LFW;

    if-nez p2, :cond_2

    .line 34
    invoke-static {}, LFe1;->b()LFe1;

    move-result-object p1

    .line 35
    iget-object p2, p1, LFe1;->a:LEe1;

    if-eqz p2, :cond_1

    invoke-static {}, LFe1;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    :try_start_1
    iget-object p1, p1, LFe1;->a:LEe1;

    .line 37
    iget-object p1, p1, LEe1;->y:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 38
    :catch_0
    :cond_1
    :goto_0
    invoke-virtual {v0}, LQV0;->run()V

    goto :goto_1

    .line 39
    :cond_2
    invoke-static {}, LFe1;->b()LFe1;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 40
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 41
    invoke-static {}, LFe1;->c()Z

    move-result p2

    const-wide/16 v1, 0x0

    if-eqz p2, :cond_3

    .line 42
    iget-object p1, p1, LFe1;->b:LFW;

    .line 43
    invoke-static {p1, v0, v1, v2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 44
    :cond_3
    iget-object p2, p1, LFe1;->a:LEe1;

    invoke-virtual {p2}, LEe1;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 45
    iget-object p1, p1, LFe1;->b:LFW;

    .line 46
    invoke-static {p1, v0, v1, v2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 47
    :cond_4
    iget-object p1, p1, LFe1;->a:LEe1;

    .line 48
    iget-object p1, p1, LEe1;->w:Ljava/util/List;

    .line 49
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    :cond_5
    const/4 p1, 0x0

    .line 50
    throw p1

    :catchall_0
    move-exception p1

    .line 51
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p1
.end method

.method public a(ZZLE01;)V
    .locals 3

    .line 1
    sget-object v0, LHW0;->c:LHW0;

    .line 2
    iget-boolean v1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->f:Z

    iget-boolean v2, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->k:Z

    invoke-static {v1, v2, p2}, LHW0;->a(ZZZ)I

    move-result v1

    invoke-virtual {v0, v1}, LHW0;->a(I)V

    .line 3
    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->f:Z

    if-nez v0, :cond_5

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->k:Z

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :goto_0
    iget-boolean p3, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->j:Z

    iget v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->i:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    if-nez p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    or-int/2addr p3, v0

    iput-boolean p3, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->j:Z

    .line 7
    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->c:Z

    if-nez v0, :cond_3

    .line 8
    iput-boolean v1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->c:Z

    .line 9
    sput-boolean p1, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->n:Z

    .line 10
    new-instance p1, LNV0;

    invoke-direct {p1, p0, p2}, LNV0;-><init>(Lorg/chromium/content/browser/BrowserStartupControllerImpl;Z)V

    invoke-virtual {p0, v2, p1}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->a(ZLjava/lang/Runnable;)V

    goto :goto_2

    .line 11
    :cond_3
    iget-boolean p1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->k:Z

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    .line 12
    iput v2, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->i:I

    .line 13
    invoke-virtual {p0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->c()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->a(I)V

    :cond_4
    :goto_2
    return-void

    .line 14
    :cond_5
    :goto_3
    sget-object p1, LZ01;->e:LFW;

    new-instance p2, LPV0;

    invoke-direct {p2, p0, p3}, LPV0;-><init>(Lorg/chromium/content/browser/BrowserStartupControllerImpl;LE01;)V

    const-wide/16 v0, 0x0

    .line 15
    invoke-static {p1, p2, v0, v1}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 16
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 17
    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b(I)V
    .locals 3

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->f:Z

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    iput-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->g:Z

    .line 23
    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LE01;

    .line 24
    iget-boolean v2, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->g:Z

    if-eqz v2, :cond_1

    .line 25
    invoke-interface {v1}, LE01;->b()V

    goto :goto_1

    .line 26
    :cond_1
    invoke-interface {v1}, LE01;->a()V

    goto :goto_1

    .line 27
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->c(I)V

    .line 29
    invoke-virtual {p0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->d()V

    return-void
.end method

.method public b(Z)V
    .locals 4

    .line 1
    sget-object v0, LHW0;->c:LHW0;

    .line 2
    iget-boolean v1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->f:Z

    iget-boolean v2, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->k:Z

    const/4 v3, 0x0

    .line 3
    invoke-static {v1, v2, v3}, LHW0;->a(ZZZ)I

    move-result v1

    .line 4
    invoke-virtual {v0, v1}, LHW0;->a(I)V

    .line 5
    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->f:Z

    if-nez v0, :cond_4

    .line 6
    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->d:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->a(ZLjava/lang/Runnable;)V

    .line 8
    :cond_1
    iget-boolean p1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->e:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 9
    iput v3, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->i:I

    .line 10
    invoke-virtual {p0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->c()I

    move-result p1

    if-lez p1, :cond_3

    .line 11
    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->a(I)V

    goto :goto_0

    .line 12
    :cond_2
    iget p1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->i:I

    if-ne p1, v0, :cond_3

    .line 13
    iput v3, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->i:I

    .line 14
    invoke-virtual {p0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->c()I

    move-result p1

    if-lez p1, :cond_3

    .line 15
    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->a(I)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_4

    .line 16
    invoke-static {}, LJ/N;->M9iLjy6T()V

    .line 17
    :cond_4
    iget-boolean p1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->g:Z

    if-eqz p1, :cond_5

    return-void

    .line 18
    :cond_5
    new-instance p1, LMU;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, LMU;-><init>(I)V

    throw p1
.end method

.method public b()Z
    .locals 1

    .line 19
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 20
    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()I
    .locals 4

    .line 1
    iget v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->i:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, LJ/N;->M1Y_XVCN(Z)I

    move-result v3

    if-nez v0, :cond_1

    .line 3
    iput-boolean v1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->j:Z

    .line 4
    :cond_1
    iput-boolean v2, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->e:Z

    return v3
.end method

.method public final c(I)V
    .locals 2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iput-boolean p1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->g:Z

    .line 6
    iget-object p1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LE01;

    .line 7
    iget-boolean v1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->g:Z

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v0}, LE01;->b()V

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {v0}, LE01;->a()V

    goto :goto_1

    .line 10
    :cond_2
    iget-object p1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public d()V
    .locals 7

    .line 1
    sget-object v0, LHW0;->c:LHW0;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, LHW0;->b:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    .line 3
    iget-object v4, v0, LHW0;->a:[I

    aget v4, v4, v2

    if-lez v4, :cond_1

    const/4 v4, 0x0

    .line 4
    :goto_1
    iget-object v5, v0, LHW0;->a:[I

    aget v6, v5, v2

    if-ge v4, v6, :cond_0

    const-string v5, "Servicification.Startup2"

    .line 5
    invoke-static {v5, v2, v3}, LfV;->a(Ljava/lang/String;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 6
    :cond_0
    aput v1, v5, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
