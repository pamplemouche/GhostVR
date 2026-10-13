.class public LEe1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A:LFe1;

.field public final w:Ljava/util/List;

.field public final x:Ljava/lang/String;

.field public final y:Ljava/util/concurrent/CountDownLatch;

.field public z:Z


# direct methods
.method public constructor <init>(LFe1;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, LEe1;->A:LFe1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LEe1;->w:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, LEe1;->y:Ljava/util/concurrent/CountDownLatch;

    .line 4
    iput-object p2, p0, LEe1;->x:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 69
    :try_start_0
    iget-object p1, p1, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {p1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 70
    sget-object v0, LRB;->a:LLB;

    invoke-virtual {v0, p0, p1}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object p0, p1, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {p0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15

    .line 1
    iget-object v0, p0, LEe1;->A:LFe1;

    if-eqz v0, :cond_21

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, LFe1;->a()Ljava/io/File;

    move-result-object v0

    const-string v2, "paks"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, LEe1;->x:Ljava/lang/String;

    .line 4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v4}, Lorg/chromium/base/LocaleUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v9, 0x1

    aput-object v5, v7, v9

    const/4 v5, 0x2

    aput-object v4, v7, v5

    const-string v4, "ui"

    const-string v10, "Using UI locale %s, system locale: %s (Android name: %s)"

    .line 7
    invoke-static {v4, v10, v7}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    new-instance v7, Ljava/util/ArrayList;

    const/4 v10, 0x6

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    sget-object v10, Lorg/chromium/ui/base/ResourceBundle;->a:[Ljava/lang/String;

    .line 10
    array-length v11, v10

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_1

    aget-object v13, v10, v12

    .line 11
    invoke-static {v13}, Lorg/chromium/base/LocaleUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 12
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    const-string v11, "en-US"

    if-eqz v10, :cond_2

    .line 14
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_2
    sget-object v10, LzT;->a:Landroid/content/Context;

    .line 16
    :goto_1
    instance-of v12, v10, Landroid/content/ContextWrapper;

    if-eqz v12, :cond_3

    .line 17
    check-cast v10, Landroid/content/ContextWrapper;

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/16 v13, 0xcfd

    if-eq v12, v13, :cond_7

    const/16 v13, 0xd1b

    if-eq v12, v13, :cond_6

    const/16 v13, 0xf10

    if-eq v12, v13, :cond_5

    const v13, 0x18c09

    if-eq v12, v13, :cond_4

    goto :goto_2

    :cond_4
    const-string v12, "fil"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x3

    goto :goto_3

    :cond_5
    const-string v12, "yi"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    goto :goto_3

    :cond_6
    const-string v12, "id"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x2

    goto :goto_3

    :cond_7
    const-string v12, "he"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v12, -0x1

    :goto_3
    if-eqz v12, :cond_c

    if-eq v12, v9, :cond_b

    if-eq v12, v5, :cond_a

    if-eq v12, v6, :cond_9

    move-object v6, v0

    goto :goto_4

    :cond_9
    const-string v6, "tl"

    goto :goto_4

    :cond_a
    const-string v6, "in"

    goto :goto_4

    :cond_b
    const-string v6, "ji"

    goto :goto_4

    :cond_c
    const-string v6, "iw"

    :goto_4
    const-string v12, "locales#lang_"

    .line 20
    invoke-static {v12, v6}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 21
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/16 v14, 0xca9

    if-eq v13, v14, :cond_f

    const/16 v14, 0xe04

    if-eq v13, v14, :cond_e

    const/16 v14, 0xf2e

    if-eq v13, v14, :cond_d

    goto :goto_5

    :cond_d
    const-string v13, "zh"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    const/4 v13, 0x2

    goto :goto_6

    :cond_e
    const-string v13, "pt"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    const/4 v13, 0x1

    goto :goto_6

    :cond_f
    const-string v13, "en"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    const/4 v13, 0x0

    goto :goto_6

    :cond_10
    :goto_5
    const/4 v13, -0x1

    :goto_6
    if-eqz v13, :cond_13

    if-eq v13, v9, :cond_12

    if-eq v13, v5, :cond_11

    move-object v9, v0

    goto :goto_7

    :cond_11
    const-string v9, "zh-CN"

    goto :goto_7

    :cond_12
    const-string v9, "pt-PT"

    goto :goto_7

    :cond_13
    move-object v9, v11

    .line 23
    :goto_7
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".pak"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 24
    invoke-static {v10, v6, v11}, LFe1;->a(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    const-string v12, "fallback-locales"

    const-string v13, "locales"

    const/16 v14, 0x2f

    if-eqz v11, :cond_14

    goto :goto_8

    .line 25
    :cond_14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 27
    invoke-static {v10, v13, v6}, LFe1;->a(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    move-object v6, v13

    goto :goto_8

    .line 28
    :cond_15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 30
    invoke-static {v10, v12, v6}, LFe1;->a(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    move-object v6, v12

    .line 31
    :goto_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v10, 0x0

    .line 32
    :goto_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_16

    .line 33
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v11, v12, v9}, LZi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_16
    const-string v9, "Using app bundle locale directory: "

    .line 34
    invoke-static {v9, v6}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v4, v6, v9}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v8

    .line 35
    invoke-virtual {v7}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const-string v0, "UI Language: %s requires .pak files: %s"

    .line 36
    invoke-static {v4, v0, v5}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    :cond_17
    const/4 v0, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v8

    .line 37
    invoke-virtual {v7}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v0

    const-string v0, "Android Locale: %s misses split for .pak files: %s"

    .line 38
    invoke-static {v4, v0, v5}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v3, v8, [Ljava/lang/String;

    .line 39
    :goto_a
    sget-object v0, LrT;->a:Lorg/chromium/base/BuildInfo;

    .line 40
    iget-object v0, v0, Lorg/chromium/base/BuildInfo;->j:Ljava/lang/String;

    .line 41
    array-length v4, v3

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 42
    :goto_b
    array-length v7, v3

    if-ge v6, v7, :cond_18

    .line 43
    aget-object v7, v3, v6

    .line 44
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-virtual {v7, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_18
    const/4 v0, 0x1

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_19

    goto :goto_c

    :cond_19
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_1a

    .line 47
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v9, 0x0

    :goto_d
    if-ge v9, v4, :cond_1a

    .line 48
    aget-object v10, v5, v9

    .line 49
    invoke-interface {v7, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    and-int/2addr v0, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_1a
    if-eqz v0, :cond_1b

    return-void

    .line 50
    :cond_1b
    iget-object v0, p0, LEe1;->A:LFe1;

    if-eqz v0, :cond_20

    .line 51
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, LFe1;->a()Ljava/io/File;

    move-result-object v7

    const-string v9, "icudtl.dat"

    invoke-direct {v4, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, LFT;->a(Ljava/io/File;)Z

    .line 52
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, LFe1;->a()Ljava/io/File;

    move-result-object v7

    const-string v9, "natives_blob.bin"

    invoke-direct {v4, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, LFT;->a(Ljava/io/File;)Z

    .line 53
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, LFe1;->a()Ljava/io/File;

    move-result-object v7

    const-string v9, "snapshot_blob.bin"

    invoke-direct {v4, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, LFT;->a(Ljava/io/File;)Z

    if-eqz v6, :cond_1c

    .line 54
    array-length v4, v6

    const/4 v7, 0x0

    :goto_e
    if-ge v7, v4, :cond_1c

    aget-object v9, v6, v7

    .line 55
    new-instance v10, Ljava/io/File;

    .line 56
    new-instance v11, Ljava/io/File;

    invoke-virtual {v0}, LFe1;->a()Ljava/io/File;

    move-result-object v12

    invoke-direct {v11, v12, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    invoke-direct {v10, v11, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v10}, LFT;->a(Ljava/io/File;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 58
    :cond_1c
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 59
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 60
    :goto_f
    array-length v0, v3

    if-ge v8, v0, :cond_1e

    .line 61
    aget-object v0, v3, v8

    .line 62
    new-instance v2, Ljava/io/File;

    aget-object v4, v5, v8

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    sget-object v4, LzT;->a:Landroid/content/Context;

    .line 64
    invoke-static {v4, v0, v2}, LFT;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1d

    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 65
    :cond_1d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1e
    return-void

    .line 66
    :cond_1f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_20
    const/4 v0, 0x0

    .line 67
    throw v0

    :cond_21
    const/4 v0, 0x0

    .line 68
    throw v0
.end method

.method public declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, LEe1;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    const-string v0, "ResourceExtractor.ExtractTask.doInBackground"

    .line 1
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, LEe1;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-static {v1, v0}, LEe1;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    .line 4
    :cond_0
    monitor-enter p0

    const/4 v0, 0x1

    .line 5
    :try_start_1
    iput-boolean v0, p0, LEe1;->z:Z

    .line 6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    iget-object v0, p0, LEe1;->y:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 8
    iget-object v0, p0, LEe1;->A:LFe1;

    .line 9
    iget-object v0, v0, LFe1;->b:LFW;

    .line 10
    new-instance v1, LDe1;

    invoke-direct {v1, p0}, LDe1;-><init>(LEe1;)V

    const-wide/16 v2, 0x0

    .line 11
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void

    :catchall_0
    move-exception v0

    .line 12
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 13
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v0, :cond_1

    .line 14
    invoke-static {v1, v0}, LEe1;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_1
    throw v2
.end method
