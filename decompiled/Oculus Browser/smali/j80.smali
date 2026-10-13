.class public Lj80;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ljava/lang/Runnable;

.field public c:Z

.field public d:I

.field public e:Z

.field public f:Lorg/chromium/chrome/browser/download/DownloadForegroundService;

.field public final g:Ljava/util/Map;

.field public final h:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lj80;->a:Landroid/os/Handler;

    .line 3
    new-instance v0, Lg80;

    invoke-direct {v0, p0}, Lg80;-><init>(Lj80;)V

    iput-object v0, p0, Lj80;->b:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lj80;->d:I

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lj80;->g:Ljava/util/Map;

    .line 6
    new-instance v0, Lh80;

    invoke-direct {v0, p0}, Lh80;-><init>(Lj80;)V

    iput-object v0, p0, Lj80;->h:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 75
    iget-object v0, p0, Lj80;->g:Ljava/util/Map;

    .line 76
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 77
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 79
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li80;

    iget v2, v2, Li80;->c:I

    invoke-virtual {p0, v2}, Lj80;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li80;

    iget v1, v1, Li80;->a:I

    iget v2, p0, Lj80;->d:I

    if-eq v1, v2, :cond_0

    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(ILandroid/app/Notification;)V
    .locals 10

    const-string v0, "startOrUpdateForegroundService id: "

    .line 82
    invoke-static {v0, p1}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DownloadFg"

    invoke-static {v3, v0, v2}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lj80;->f:Lorg/chromium/chrome/browser/download/DownloadForegroundService;

    if-eqz v0, :cond_9

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    if-eqz p2, :cond_9

    .line 84
    iget-object v2, p0, Lj80;->g:Ljava/util/Map;

    iget v4, p0, Lj80;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li80;

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move-object v5, v4

    goto :goto_0

    .line 85
    :cond_0
    iget-object v5, v2, Li80;->b:Landroid/app/Notification;

    :goto_0
    const/4 v6, 0x1

    if-eqz v2, :cond_1

    .line 86
    iget v2, v2, Li80;->c:I

    const/4 v7, 0x3

    if-ne v2, v7, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 87
    :goto_1
    iget-object v7, p0, Lj80;->f:Lorg/chromium/chrome/browser/download/DownloadForegroundService;

    iget v8, p0, Lj80;->d:I

    if-eqz v7, :cond_8

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startOrUpdateForegroundService new: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", old: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", kill old: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v9}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne v8, v0, :cond_2

    if-nez v5, :cond_2

    .line 89
    invoke-virtual {v7, p1, p2}, Lorg/chromium/chrome/browser/download/DownloadForegroundService;->b(ILandroid/app/Notification;)V

    goto :goto_3

    .line 90
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_4

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x2

    .line 91
    :goto_2
    invoke-virtual {v7, v2}, Lorg/chromium/chrome/browser/download/DownloadForegroundService;->a(I)V

    .line 92
    invoke-virtual {v7, p1, p2}, Lorg/chromium/chrome/browser/download/DownloadForegroundService;->b(ILandroid/app/Notification;)V

    goto :goto_3

    .line 93
    :cond_4
    invoke-virtual {v7, p1, p2}, Lorg/chromium/chrome/browser/download/DownloadForegroundService;->b(ILandroid/app/Notification;)V

    if-nez v2, :cond_5

    .line 94
    invoke-virtual {v7, v8, v5}, Lorg/chromium/chrome/browser/download/DownloadForegroundService;->a(ILandroid/app/Notification;)V

    :cond_5
    :goto_3
    if-ne v8, v0, :cond_6

    .line 95
    invoke-static {v1}, LX80;->c(I)V

    goto :goto_4

    :cond_6
    if-eq v8, p1, :cond_7

    .line 96
    invoke-static {v6}, LX80;->c(I)V

    .line 97
    :cond_7
    :goto_4
    iput p1, p0, Lj80;->d:I

    goto :goto_5

    .line 98
    :cond_8
    throw v4

    :cond_9
    :goto_5
    return-void
.end method

.method public a(Landroid/content/Context;IILandroid/app/Notification;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDownloadStatus status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "DownloadFg"

    invoke-static {v3, v1, v2}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    :cond_0
    iget-object v1, p0, Lj80;->g:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Li80;

    invoke-direct {v3, p3, p4, p2, p1}, Li80;-><init>(ILandroid/app/Notification;ILandroid/content/Context;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, v0}, Lj80;->a(Z)V

    return-void
.end method

.method public a(Z)V
    .locals 17

    move-object/from16 v0, p0

    .line 4
    iget-object v1, v0, Lj80;->g:Ljava/util/Map;

    .line 5
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li80;

    iget v4, v4, Li80;->c:I

    invoke-virtual {v0, v4}, Lj80;->a(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li80;

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li80;

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-boolean v2, v0, Lj80;->e:Z

    const/4 v4, 0x1

    const-string v5, "DownloadFg"

    const/4 v6, 0x0

    if-nez v2, :cond_5

    .line 11
    iget v2, v1, Li80;->c:I

    invoke-virtual {v0, v2}, Lj80;->a(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 12
    invoke-virtual/range {p0 .. p0}, Lj80;->a()V

    return-void

    .line 13
    :cond_4
    iget-object v1, v1, Li80;->d:Landroid/content/Context;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "startAndBindService"

    .line 14
    invoke-static {v5, v3, v2}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    iput-boolean v4, v0, Lj80;->e:Z

    .line 16
    invoke-static {v1}, Lorg/chromium/chrome/browser/download/DownloadForegroundService;->a(Landroid/content/Context;)V

    .line 17
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lorg/chromium/chrome/browser/download/DownloadForegroundService;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, v0, Lj80;->h:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void

    .line 18
    :cond_5
    iget-object v2, v0, Lj80;->f:Lorg/chromium/chrome/browser/download/DownloadForegroundService;

    if-nez v2, :cond_6

    return-void

    :cond_6
    if-eqz p1, :cond_7

    const-string v2, "Starting service with type "

    .line 19
    invoke-static {v2}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, v1, Li80;->c:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v5, v2, v7}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget v2, v1, Li80;->a:I

    iget-object v7, v1, Li80;->b:Landroid/app/Notification;

    invoke-virtual {v0, v2, v7}, Lj80;->a(ILandroid/app/Notification;)V

    .line 21
    iget-object v2, v0, Lj80;->a:Landroid/os/Handler;

    iget-object v7, v0, Lj80;->b:Ljava/lang/Runnable;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    iget-object v2, v0, Lj80;->a:Landroid/os/Handler;

    iget-object v7, v0, Lj80;->b:Ljava/lang/Runnable;

    const-wide/16 v8, 0xc8

    invoke-virtual {v2, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    iput-boolean v4, v0, Lj80;->c:Z

    .line 24
    :cond_7
    iget v2, v1, Li80;->c:I

    invoke-virtual {v0, v2}, Lj80;->a(I)Z

    move-result v2

    if-nez v2, :cond_13

    .line 25
    iget-boolean v2, v0, Lj80;->c:Z

    if-nez v2, :cond_12

    .line 26
    iget v1, v1, Li80;->c:I

    const-string v2, "stopAndUnbindService status: "

    .line 27
    invoke-static {v2, v1}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v5, v2, v7}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-object v2, v0, Lj80;->f:Lorg/chromium/chrome/browser/download/DownloadForegroundService;

    invoke-static {v2}, LWE;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iput-boolean v6, v0, Lj80;->e:Z

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    const/4 v1, 0x0

    goto :goto_1

    :cond_8
    const/4 v1, 0x1

    .line 30
    :goto_1
    iget-object v2, v0, Lj80;->g:Ljava/util/Map;

    iget v7, v0, Lj80;->d:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li80;

    if-nez v2, :cond_9

    move-object v2, v3

    goto :goto_2

    .line 31
    :cond_9
    iget-object v2, v2, Li80;->b:Landroid/app/Notification;

    .line 32
    :goto_2
    iget v7, v0, Lj80;->d:I

    .line 33
    iget-object v8, v0, Lj80;->f:Lorg/chromium/chrome/browser/download/DownloadForegroundService;

    if-eqz v8, :cond_11

    .line 34
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "stopDownloadForegroundService status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v5, v9, v10}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x2

    .line 35
    invoke-static {v5}, LX80;->c(I)V

    .line 36
    invoke-static {v6, v4}, LX80;->a(IZ)V

    if-nez v1, :cond_a

    .line 37
    invoke-virtual {v8, v4}, Lorg/chromium/chrome/browser/download/DownloadForegroundService;->a(I)V

    goto :goto_3

    .line 38
    :cond_a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v1, v6, :cond_b

    .line 39
    invoke-virtual {v8, v5}, Lorg/chromium/chrome/browser/download/DownloadForegroundService;->a(I)V

    goto :goto_3

    :cond_b
    const/16 v5, 0x17

    if-lt v1, v5, :cond_c

    .line 40
    invoke-virtual {v8, v4}, Lorg/chromium/chrome/browser/download/DownloadForegroundService;->a(I)V

    .line 41
    invoke-virtual {v8, v7, v2}, Lorg/chromium/chrome/browser/download/DownloadForegroundService;->a(ILandroid/app/Notification;)V

    goto :goto_3

    .line 42
    :cond_c
    invoke-static {}, LW80;->c()I

    move-result v1

    .line 43
    sget-object v5, Lf90;->a:Lh90;

    .line 44
    iget-object v6, v5, Lh90;->a:Ljava/util/List;

    .line 45
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ld90;

    .line 46
    iget v10, v9, Ld90;->a:I

    if-ne v10, v7, :cond_d

    .line 47
    new-instance v6, Ld90;

    iget-object v10, v9, Ld90;->f:LbU0;

    iget-boolean v12, v9, Ld90;->b:Z

    iget-boolean v13, v9, Ld90;->c:Z

    iget-object v14, v9, Ld90;->d:Ljava/lang/String;

    iget-boolean v15, v9, Ld90;->e:Z

    iget-boolean v7, v9, Ld90;->g:Z

    move-object v9, v6

    move v11, v1

    move/from16 v16, v7

    invoke-direct/range {v9 .. v16}, Ld90;-><init>(LbU0;IZZLjava/lang/String;ZZ)V

    .line 48
    invoke-virtual {v5, v6, v4}, Lh90;->a(Ld90;Z)V

    .line 49
    :cond_e
    invoke-virtual {v8, v1, v2}, Lorg/chromium/chrome/browser/download/DownloadForegroundService;->a(ILandroid/app/Notification;)V

    .line 50
    invoke-virtual {v8, v4}, Lorg/chromium/chrome/browser/download/DownloadForegroundService;->a(I)V

    .line 51
    :goto_3
    invoke-virtual {v8}, Landroid/app/Service;->stopSelf()V

    .line 52
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 53
    iget-object v2, v0, Lj80;->h:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 54
    const-class v1, Lorg/chromium/chrome/browser/download/DownloadNotificationServiceObserver;

    .line 55
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 56
    invoke-static {}, Ll80;->a()Ljava/util/Set;

    move-result-object v2

    .line 57
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_4

    .line 59
    :cond_f
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 60
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v1

    const-string v2, "ForegroundServiceObservers"

    if-nez v1, :cond_10

    .line 62
    sget-object v1, LyT;->a:Landroid/content/SharedPreferences;

    .line 63
    invoke-static {v1, v2}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_4

    .line 64
    :cond_10
    sget-object v1, LyT;->a:Landroid/content/SharedPreferences;

    .line 65
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    :goto_4
    iput-object v3, v0, Lj80;->f:Lorg/chromium/chrome/browser/download/DownloadForegroundService;

    const/4 v1, -0x1

    .line 67
    iput v1, v0, Lj80;->d:I

    .line 68
    invoke-virtual/range {p0 .. p0}, Lj80;->a()V

    goto :goto_5

    .line 69
    :cond_11
    throw v3

    :cond_12
    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "Delaying call to stopAndUnbindService."

    .line 70
    invoke-static {v5, v2, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    return-void

    .line 71
    :cond_13
    iget-object v2, v0, Lj80;->g:Ljava/util/Map;

    iget v3, v0, Lj80;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    iget-object v2, v0, Lj80;->g:Ljava/util/Map;

    iget v3, v0, Lj80;->d:I

    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li80;

    iget v2, v2, Li80;->c:I

    invoke-virtual {v0, v2}, Lj80;->a(I)Z

    move-result v2

    if-nez v2, :cond_15

    .line 73
    :cond_14
    iget v2, v1, Li80;->a:I

    iget-object v1, v1, Li80;->b:Landroid/app/Notification;

    invoke-virtual {v0, v2, v1}, Lj80;->a(ILandroid/app/Notification;)V

    .line 74
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lj80;->a()V

    return-void
.end method

.method public final a(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
