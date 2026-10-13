.class public Ldc0;
.super LCb0;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LCb0;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .locals 10

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/util/Pair;

    .line 1
    invoke-static {}, LJ/N;->MpdXuPgt()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CPU Architecture"

    .line 2
    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 3
    invoke-static {}, LJ/N;->Mnh$RUKx()I

    move-result v2

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Available Memory (MB)"

    .line 5
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    .line 6
    invoke-static {}, LJ/N;->MEPW6xxL()I

    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Total Memory (MB)"

    .line 8
    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    .line 9
    invoke-static {}, LJ/N;->M3VLomue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GPU Vendor"

    .line 10
    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    .line 11
    invoke-static {}, LJ/N;->MZ6RjAhF()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GPU Model"

    .line 12
    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x5

    .line 13
    invoke-static {}, Lorg/chromium/base/LocaleUtils;->getDefaultLocaleString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UI Locale"

    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    .line 14
    invoke-static {v0}, LsT;->a([Landroid/util/Pair;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 15
    :try_start_0
    iget-object v3, p0, LCb0;->a:LBb0;

    if-eqz v3, :cond_0

    iget-object v3, p0, LCb0;->a:LBb0;

    invoke-virtual {v3}, LkW;->getStatus()I

    move-result v3

    if-ne v3, v2, :cond_0

    iget-object v2, p0, LCb0;->a:LBb0;

    invoke-virtual {v2}, LkW;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :catch_0
    :cond_0
    check-cast v1, Landroid/os/StatFs;

    if-eqz v1, :cond_1

    .line 17
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 18
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v4

    mul-long v4, v4, v2

    const-wide/32 v6, 0x100000

    .line 19
    div-long/2addr v4, v6

    .line 20
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v8

    mul-long v8, v8, v2

    .line 21
    div-long/2addr v8, v6

    .line 22
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Available Storage (MB)"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Total Storage (MB)"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
