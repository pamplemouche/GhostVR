.class public Lorg/chromium/midi/MidiManagerAndroid;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Z

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/Set;

.field public final d:Landroid/media/midi/MidiManager;

.field public final e:Landroid/os/Handler;

.field public final f:J

.field public g:Z


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/midi/MidiManagerAndroid;->b:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/midi/MidiManagerAndroid;->c:Ljava/util/Set;

    .line 4
    sget-object v0, LzT;->a:Landroid/content/Context;

    const-string v1, "midi"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/midi/MidiManager;

    iput-object v0, p0, Lorg/chromium/midi/MidiManagerAndroid;->d:Landroid/media/midi/MidiManager;

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->e()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/chromium/midi/MidiManagerAndroid;->e:Landroid/os/Handler;

    .line 7
    iput-wide p1, p0, Lorg/chromium/midi/MidiManagerAndroid;->f:J

    return-void
.end method

.method public static create(J)Lorg/chromium/midi/MidiManagerAndroid;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/midi/MidiManagerAndroid;

    invoke-direct {v0, p0, p1}, Lorg/chromium/midi/MidiManagerAndroid;-><init>(J)V

    return-object v0
.end method

.method public static hasSystemFeatureMidi()Z
    .locals 2

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.midi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiDeviceInfo;)V
    .locals 2

    monitor-enter p0

    .line 14
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/midi/MidiManagerAndroid;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 15
    monitor-exit p0

    return-void

    .line 16
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/chromium/midi/MidiManagerAndroid;->c:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    .line 17
    new-instance p2, Lorg/chromium/midi/MidiDeviceAndroid;

    invoke-direct {p2, p1}, Lorg/chromium/midi/MidiDeviceAndroid;-><init>(Landroid/media/midi/MidiDevice;)V

    .line 18
    iget-object p1, p0, Lorg/chromium/midi/MidiManagerAndroid;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-boolean p1, p0, Lorg/chromium/midi/MidiManagerAndroid;->a:Z

    if-eqz p1, :cond_1

    .line 20
    iget-wide v0, p0, Lorg/chromium/midi/MidiManagerAndroid;->f:J

    .line 21
    invoke-static {v0, v1, p2}, LJ/N;->MEOWUhL5(JLjava/lang/Object;)V

    .line 22
    :cond_1
    iget-boolean p1, p0, Lorg/chromium/midi/MidiManagerAndroid;->a:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/chromium/midi/MidiManagerAndroid;->c:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 23
    iget-wide p1, p0, Lorg/chromium/midi/MidiManagerAndroid;->f:J

    iget-object v0, p0, Lorg/chromium/midi/MidiManagerAndroid;->b:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/chromium/midi/MidiDeviceAndroid;

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/midi/MidiDeviceAndroid;

    .line 25
    invoke-static {p1, p2, v0}, LJ/N;->M3znzcE9(J[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lorg/chromium/midi/MidiManagerAndroid;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/midi/MidiManagerAndroid;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/chromium/midi/MidiManagerAndroid;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/midi/MidiDeviceAndroid;

    .line 4
    iget-boolean v2, v1, Lorg/chromium/midi/MidiDeviceAndroid;->d:Z

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v1}, Lorg/chromium/midi/MidiDeviceAndroid;->a()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/midi/MidiDeviceInfo;->getId()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v1, Lorg/chromium/midi/MidiDeviceAndroid;->d:Z

    .line 7
    iget-object v3, v1, Lorg/chromium/midi/MidiDeviceAndroid;->b:[Lorg/chromium/midi/MidiInputPortAndroid;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 8
    invoke-virtual {v6}, Lorg/chromium/midi/MidiInputPortAndroid;->close()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 9
    :cond_2
    iget-object v3, v1, Lorg/chromium/midi/MidiDeviceAndroid;->c:[Lorg/chromium/midi/MidiOutputPortAndroid;

    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 10
    invoke-virtual {v5}, Lorg/chromium/midi/MidiOutputPortAndroid;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 11
    :cond_3
    iget-wide v2, p0, Lorg/chromium/midi/MidiManagerAndroid;->f:J

    .line 12
    invoke-static {v2, v3, v1}, LJ/N;->Md3XPFG5(JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 13
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public initialize()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/chromium/midi/MidiManagerAndroid;->d:Landroid/media/midi/MidiManager;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/midi/MidiManagerAndroid;->e:Landroid/os/Handler;

    new-instance v1, LU51;

    invoke-direct {v1, p0}, LU51;-><init>(Lorg/chromium/midi/MidiManagerAndroid;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 3
    :cond_0
    new-instance v1, LV51;

    invoke-direct {v1, p0}, LV51;-><init>(Lorg/chromium/midi/MidiManagerAndroid;)V

    iget-object v2, p0, Lorg/chromium/midi/MidiManagerAndroid;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/midi/MidiManager;->registerDeviceCallback(Landroid/media/midi/MidiManager$DeviceCallback;Landroid/os/Handler;)V

    .line 4
    iget-object v0, p0, Lorg/chromium/midi/MidiManagerAndroid;->d:Landroid/media/midi/MidiManager;

    invoke-virtual {v0}, Landroid/media/midi/MidiManager;->getDevices()[Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    .line 5
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 6
    iget-object v4, p0, Lorg/chromium/midi/MidiManagerAndroid;->c:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v4, p0, Lorg/chromium/midi/MidiManagerAndroid;->d:Landroid/media/midi/MidiManager;

    new-instance v5, LX51;

    invoke-direct {v5, p0, v3}, LX51;-><init>(Lorg/chromium/midi/MidiManagerAndroid;Landroid/media/midi/MidiDeviceInfo;)V

    iget-object v6, p0, Lorg/chromium/midi/MidiManagerAndroid;->e:Landroid/os/Handler;

    invoke-virtual {v4, v3, v5, v6}, Landroid/media/midi/MidiManager;->openDevice(Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lorg/chromium/midi/MidiManagerAndroid;->e:Landroid/os/Handler;

    new-instance v1, LW51;

    invoke-direct {v1, p0}, LW51;-><init>(Lorg/chromium/midi/MidiManagerAndroid;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lorg/chromium/midi/MidiManagerAndroid;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
