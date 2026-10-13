.class public LPV;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LIV;


# instance fields
.field public final synthetic a:LRV;


# direct methods
.method public constructor <init>(LRV;)V
    .locals 0

    .line 1
    iput-object p1, p0, LPV;->a:LRV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LLV;)V
    .locals 13

    .line 1
    iget-object p1, p0, LPV;->a:LRV;

    .line 2
    iget-object v7, p1, LRV;->g:LLV;

    .line 3
    iget v0, v7, LLV;->m:I

    .line 4
    iget-object v1, p1, LRV;->b:LQV;

    move-object v8, v1

    check-cast v8, LWV0;

    if-eqz v8, :cond_5

    if-lez v0, :cond_2

    .line 5
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->q:Ljava/util/Map;

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, v8, LWV0;->a:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, v8, LWV0;->a:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    .line 8
    iget-object v9, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->a:LfW0;

    if-eqz v9, :cond_2

    const/4 v2, 0x0

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 9
    iget v0, v9, LfW0;->x:I

    const/4 v10, -0x1

    if-eq v0, v10, :cond_1

    iget-object v0, v9, LfW0;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, v9, LfW0;->x:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "mRankings.size:"

    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, LfW0;->y:Ljava/util/List;

    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mMaxSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, LfW0;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    :goto_0
    iget-object v11, v9, LfW0;->y:Ljava/util/List;

    new-instance v12, LcW0;

    move-object v0, v12

    move-object v1, v7

    invoke-direct/range {v0 .. v6}, LcW0;-><init>(LLV;ZJZI)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, v9, LfW0;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v10

    invoke-virtual {v9, v0}, LfW0;->b(I)V

    .line 14
    iget-object v0, v8, LWV0;->a:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    .line 15
    iget-object v0, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->b:LKV0;

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {v0}, LKV0;->a()V

    .line 17
    :cond_2
    iget-object v0, v8, LWV0;->a:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    .line 18
    iget-wide v0, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 19
    iget v4, v7, LLV;->m:I

    .line 20
    invoke-static {v0, v1, v4}, LJ/N;->MXR$KaDS(JI)V

    .line 21
    :cond_3
    iget-object v0, v8, LWV0;->a:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    .line 22
    iput-wide v2, v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->g:J

    const/4 v0, 0x0

    .line 23
    :try_start_0
    iget-object p1, p1, LRV;->d:[Lorg/chromium/base/process_launcher/FileDescriptorInfo;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    .line 24
    iget-object v3, v3, Lorg/chromium/base/process_launcher/FileDescriptorInfo;->x:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "ChildProcLauncher"

    const-string v0, "Failed to close FD."

    .line 25
    invoke-static {p1, v0, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    const/4 p1, 0x0

    .line 26
    throw p1
.end method
