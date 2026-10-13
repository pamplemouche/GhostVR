.class public Lk41;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field public final synthetic a:Lorg/chromium/media/AudioManagerAndroid;


# direct methods
.method public constructor <init>(Lorg/chromium/media/AudioManagerAndroid;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk41;->a:Lorg/chromium/media/AudioManagerAndroid;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string p1, "state"

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_0

    const-string p1, "Invalid state"

    .line 2
    invoke-static {p1}, Lorg/chromium/media/AudioManagerAndroid;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object p1, p0, Lk41;->a:Lorg/chromium/media/AudioManagerAndroid;

    .line 4
    iget-object p1, p1, Lorg/chromium/media/AudioManagerAndroid;->j:Ljava/lang/Object;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v3, p0, Lk41;->a:Lorg/chromium/media/AudioManagerAndroid;

    .line 7
    iget-object v3, v3, Lorg/chromium/media/AudioManagerAndroid;->k:[Z

    .line 8
    aput-boolean v2, v3, v2

    .line 9
    iget-object v2, p0, Lk41;->a:Lorg/chromium/media/AudioManagerAndroid;

    .line 10
    iget-object v2, v2, Lorg/chromium/media/AudioManagerAndroid;->k:[Z

    .line 11
    aput-boolean v0, v2, v1

    .line 12
    iget-object v1, p0, Lk41;->a:Lorg/chromium/media/AudioManagerAndroid;

    .line 13
    iget-object v1, v1, Lorg/chromium/media/AudioManagerAndroid;->k:[Z

    .line 14
    aput-boolean v0, v1, p2

    .line 15
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 16
    :cond_1
    iget-object p1, p0, Lk41;->a:Lorg/chromium/media/AudioManagerAndroid;

    .line 17
    iget-object p1, p1, Lorg/chromium/media/AudioManagerAndroid;->j:Ljava/lang/Object;

    .line 18
    monitor-enter p1

    .line 19
    :try_start_1
    iget-object v3, p0, Lk41;->a:Lorg/chromium/media/AudioManagerAndroid;

    .line 20
    iget-object v3, v3, Lorg/chromium/media/AudioManagerAndroid;->k:[Z

    .line 21
    aput-boolean v0, v3, v2

    .line 22
    iget-object v3, p0, Lk41;->a:Lorg/chromium/media/AudioManagerAndroid;

    .line 23
    invoke-virtual {v3}, Lorg/chromium/media/AudioManagerAndroid;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 24
    iget-object v3, p0, Lk41;->a:Lorg/chromium/media/AudioManagerAndroid;

    .line 25
    iget-object v3, v3, Lorg/chromium/media/AudioManagerAndroid;->k:[Z

    .line 26
    aput-boolean v2, v3, p2

    .line 27
    iget-object p2, p0, Lk41;->a:Lorg/chromium/media/AudioManagerAndroid;

    .line 28
    iget-object p2, p2, Lorg/chromium/media/AudioManagerAndroid;->k:[Z

    .line 29
    aput-boolean v0, p2, v1

    goto :goto_0

    .line 30
    :cond_2
    iget-object v3, p0, Lk41;->a:Lorg/chromium/media/AudioManagerAndroid;

    if-eqz v3, :cond_5

    .line 31
    sget-object v3, LzT;->a:Landroid/content/Context;

    .line 32
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.telephony"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 33
    iget-object v3, p0, Lk41;->a:Lorg/chromium/media/AudioManagerAndroid;

    .line 34
    iget-object v3, v3, Lorg/chromium/media/AudioManagerAndroid;->k:[Z

    .line 35
    aput-boolean v2, v3, v1

    .line 36
    iget-object v1, p0, Lk41;->a:Lorg/chromium/media/AudioManagerAndroid;

    .line 37
    iget-object v1, v1, Lorg/chromium/media/AudioManagerAndroid;->k:[Z

    .line 38
    aput-boolean v0, v1, p2

    .line 39
    :cond_3
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    :goto_1
    iget-object p1, p0, Lk41;->a:Lorg/chromium/media/AudioManagerAndroid;

    invoke-static {p1}, Lorg/chromium/media/AudioManagerAndroid;->a(Lorg/chromium/media/AudioManagerAndroid;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 41
    iget-object p1, p0, Lk41;->a:Lorg/chromium/media/AudioManagerAndroid;

    .line 42
    invoke-virtual {p1}, Lorg/chromium/media/AudioManagerAndroid;->e()V

    :cond_4
    return-void

    :cond_5
    const/4 p2, 0x0

    .line 43
    :try_start_2
    throw p2

    :catchall_1
    move-exception p2

    .line 44
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p2
.end method
