.class public LYI0;
.super LZI0;
.source "PG"


# static fields
.field public static final x:Ljava/lang/Object;


# instance fields
.field public final a:LGI0;

.field public final b:LpI0;

.field public final c:LcI0;

.field public d:LWT;

.field public final e:Ljava/util/Deque;

.field public final f:Ljava/util/Deque;

.field public final g:Ljava/util/Set;

.field public h:LQI0;

.field public i:LTI0;

.field public j:LSI0;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Landroid/util/SparseIntArray;

.field public o:Landroid/util/SparseIntArray;

.field public p:Landroid/content/SharedPreferences;

.field public q:LuW;

.field public r:LkW;

.field public s:Ljava/util/List;

.field public t:Ljava/util/Set;

.field public u:[B

.field public v:Z

.field public w:LkW;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LYI0;->x:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LGI0;LpI0;LcI0;LWI0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, LZI0;-><init>()V

    .line 2
    iput-object p1, p0, LYI0;->a:LGI0;

    .line 3
    iput-object p2, p0, LYI0;->b:LpI0;

    .line 4
    iput-object p3, p0, LYI0;->c:LcI0;

    .line 5
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, LYI0;->e:Ljava/util/Deque;

    .line 6
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, LYI0;->f:Ljava/util/Deque;

    .line 7
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, LYI0;->g:Ljava/util/Set;

    .line 8
    new-instance p1, LWT;

    invoke-direct {p1}, LWT;-><init>()V

    iput-object p1, p0, LYI0;->d:LWT;

    .line 9
    invoke-virtual {p1, p4}, LWT;->a(Ljava/lang/Object;)Z

    .line 10
    sget-object p1, LyT;->a:Landroid/content/SharedPreferences;

    .line 11
    iput-object p1, p0, LYI0;->p:Landroid/content/SharedPreferences;

    .line 12
    sget-object p1, LFW;->n:LFW;

    .line 13
    invoke-static {p1}, Lorg/chromium/base/task/PostTask;->a(LFW;)LuW;

    move-result-object p2

    iput-object p2, p0, LYI0;->q:LuW;

    .line 14
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, LYI0;->s:Ljava/util/List;

    .line 15
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, LYI0;->t:Ljava/util/Set;

    .line 16
    iget-object p2, p0, LYI0;->a:LGI0;

    iget-object p3, p0, LYI0;->q:LuW;

    .line 17
    check-cast p2, LgJ0;

    invoke-virtual {p2, p3}, LgJ0;->a(LCW;)Z

    move-result p2

    .line 18
    iget-object p3, p0, LYI0;->a:LGI0;

    check-cast p3, LgJ0;

    const/4 p4, 0x0

    if-eqz p3, :cond_7

    .line 19
    invoke-virtual {p3}, LgJ0;->c()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 20
    iget-object p1, p0, LYI0;->q:LuW;

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/chromium/base/task/PostTask;->b(LFW;)LCW;

    move-result-object p1

    .line 21
    :goto_0
    iget-object p3, p0, LYI0;->a:LGI0;

    .line 22
    check-cast p3, LgJ0;

    invoke-virtual {p3}, LgJ0;->b()Ljava/lang/String;

    move-result-object p3

    .line 23
    new-instance v0, LNI0;

    invoke-direct {v0, p0, p3}, LNI0;-><init>(LYI0;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, p1}, LkW;->executeOnTaskRunner(LCW;)LkW;

    move-result-object p3

    .line 25
    iput-object p3, p0, LYI0;->r:LkW;

    .line 26
    iget-object p3, p0, LYI0;->p:Landroid/content/SharedPreferences;

    const/4 v0, -0x1

    const-string v1, "org.chromium.chrome.browser.tabmodel.TabPersistentStore.ACTIVE_TAB_ID"

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-ne p3, v0, :cond_2

    goto :goto_1

    .line 27
    :cond_2
    new-instance v0, LOI0;

    invoke-direct {v0, p0, p3}, LOI0;-><init>(LYI0;I)V

    .line 28
    invoke-virtual {v0, p1}, LkW;->executeOnTaskRunner(LCW;)LkW;

    move-result-object p3

    iput-object p3, p0, LYI0;->w:LkW;

    .line 29
    :goto_1
    iget-object p3, p0, LYI0;->a:LGI0;

    check-cast p3, LgJ0;

    .line 30
    iget-boolean v0, p3, LgJ0;->d:Z

    if-eqz v0, :cond_5

    if-eqz p3, :cond_4

    .line 31
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    iget p3, p3, LgJ0;->c:I

    invoke-static {p3}, LgJ0;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_3
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 35
    new-instance v0, LNI0;

    invoke-direct {v0, p0, p4}, LNI0;-><init>(LYI0;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, p1}, LkW;->executeOnTaskRunner(LCW;)LkW;

    move-result-object v0

    .line 37
    iget-object v1, p0, LYI0;->s:Ljava/util/List;

    invoke-static {v0, p4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p4

    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 38
    :cond_4
    throw p4

    :cond_5
    if-nez p2, :cond_6

    .line 39
    invoke-interface {p1}, LCW;->destroy()V

    :cond_6
    return-void

    .line 40
    :cond_7
    throw p4
.end method

.method public static a(Ljava/io/DataInputStream;LRI0;Landroid/util/SparseBooleanArray;Z)I
    .locals 22

    move-object/from16 v0, p2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    .line 72
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 73
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-eq v4, v5, :cond_4

    const/4 v7, 0x3

    if-ge v4, v7, :cond_1

    return v1

    :cond_1
    if-ge v4, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    const/4 v7, 0x4

    if-ge v4, v7, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 74
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    if-eqz v5, :cond_5

    const/4 v5, -0x1

    goto :goto_2

    .line 75
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 76
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 77
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    if-ltz v7, :cond_17

    if-ge v8, v7, :cond_17

    if-ge v9, v7, :cond_17

    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v7, :cond_15

    .line 78
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    if-eqz v4, :cond_6

    const-string v12, ""

    goto :goto_4

    .line 79
    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v12

    :goto_4
    move-object v14, v12

    if-lt v11, v10, :cond_7

    add-int/lit8 v10, v11, 0x1

    :cond_7
    move/from16 v16, v10

    if-eqz v0, :cond_8

    .line 80
    invoke-virtual {v0, v11, v6}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_8
    const/16 v17, 0x0

    if-gez v5, :cond_9

    move-object/from16 v13, v17

    goto :goto_6

    :cond_9
    if-ge v15, v5, :cond_a

    const/4 v10, 0x1

    goto :goto_5

    :cond_a
    const/4 v10, 0x0

    .line 81
    :goto_5
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object v13, v10

    :goto_6
    if-eqz p1, :cond_13

    if-ne v15, v9, :cond_b

    const/16 v18, 0x1

    goto :goto_7

    :cond_b
    const/16 v18, 0x0

    :goto_7
    if-ne v15, v8, :cond_c

    const/16 v19, 0x1

    goto :goto_8

    :cond_c
    const/16 v19, 0x0

    .line 82
    :goto_8
    move-object/from16 v12, p1

    check-cast v12, LJI0;

    .line 83
    iget-object v10, v12, LJI0;->c:LYI0;

    .line 84
    iget-boolean v1, v10, LYI0;->v:Z

    if-eqz v1, :cond_e

    .line 85
    iget-object v1, v10, LYI0;->a:LGI0;

    .line 86
    check-cast v1, LgJ0;

    invoke-virtual {v1}, LgJ0;->c()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v12, LJI0;->c:LYI0;

    .line 87
    iget-object v1, v1, LYI0;->g:Ljava/util/Set;

    .line 88
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_b

    .line 89
    :cond_d
    iget-object v1, v12, LJI0;->c:LYI0;

    .line 90
    iget-object v1, v1, LYI0;->g:Ljava/util/Set;

    .line 91
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_e
    new-instance v1, LXI0;

    iget-boolean v10, v12, LJI0;->a:Z

    .line 93
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object v10, v1

    move-object v6, v12

    move v12, v15

    move/from16 v21, v15

    move-object/from16 v15, v20

    invoke-direct/range {v10 .. v15}, LXI0;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 94
    iget-boolean v10, v6, LJI0;->a:Z

    if-nez v10, :cond_11

    if-eqz v19, :cond_f

    iget-boolean v10, v6, LJI0;->b:Z

    if-nez v10, :cond_10

    :cond_f
    if-eqz v18, :cond_11

    iget-boolean v10, v6, LJI0;->b:Z

    if-nez v10, :cond_11

    .line 95
    :cond_10
    iget-object v10, v6, LJI0;->c:LYI0;

    .line 96
    iget-object v10, v10, LYI0;->f:Ljava/util/Deque;

    .line 97
    invoke-interface {v10, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    goto :goto_9

    .line 98
    :cond_11
    iget-object v10, v6, LJI0;->c:LYI0;

    .line 99
    iget-object v10, v10, LYI0;->f:Ljava/util/Deque;

    .line 100
    invoke-interface {v10, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 101
    :goto_9
    iget-object v1, v6, LJI0;->c:LYI0;

    .line 102
    iget-object v1, v1, LYI0;->d:LWT;

    .line 103
    invoke-virtual {v1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LWI0;

    if-eqz v6, :cond_12

    goto :goto_a

    .line 104
    :cond_12
    throw v17

    :cond_13
    :goto_b
    move/from16 v21, v15

    :cond_14
    add-int/lit8 v15, v21, 0x1

    move/from16 v10, v16

    const/4 v1, 0x0

    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_15
    if-eqz p3, :cond_16

    const-string v0, "ReadMergedStateTime"

    .line 105
    invoke-static {v0, v2, v3}, LYI0;->a(Ljava/lang/String;J)V

    :cond_16
    const-string v0, "ReadSavedStateTime"

    .line 106
    invoke-static {v0, v2, v3}, LYI0;->a(Ljava/lang/String;J)V

    return v10

    .line 107
    :cond_17
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;[B)V
    .locals 4

    .line 59
    sget-object v0, LYI0;->x:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    new-instance p0, LM6;

    invoke-direct {p0, v1}, LM6;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    const/4 v2, 0x0

    .line 62
    :try_start_1
    invoke-virtual {p0}, LM6;->a()Ljava/io/FileOutputStream;

    move-result-object p1

    .line 63
    array-length v3, p2

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 64
    invoke-virtual {p0, p1}, LM6;->a(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    nop

    if-eqz p1, :cond_0

    .line 65
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    :catch_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 67
    iget-object p1, p0, LM6;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 68
    iget-object p1, p0, LM6;->b:Ljava/io/File;

    iget-object p0, p0, LM6;->a:Ljava/io/File;

    invoke-virtual {p1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_2
    move-exception p0

    :try_start_4
    const-string p1, "AtomicFile"

    const-string p2, "failWrite: Got exception:"

    .line 69
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const-string p0, "tabmodel"

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to write file: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 2

    .line 1
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 2
    iget-boolean v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "Android.StrictMode.TabPersistentStore."

    .line 3
    invoke-static {v0, p0}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 5
    invoke-static {p0, v0, v1}, LfV;->c(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "tab_state"

    .line 21
    invoke-static {v0, p0}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g()Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, LPI0;->a:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    .line 6
    iget-object v0, p0, LYI0;->a:LGI0;

    check-cast v0, LgJ0;

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, LgJ0;->d()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public a(LXI0;LtH0;Z)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 8
    iget-boolean v1, p2, LtH0;->h:Z

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p1, LXI0;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "tabmodel"

    const/4 v3, 0x1

    if-nez p2, :cond_5

    .line 11
    iget-object v4, p1, LXI0;->d:Ljava/lang/Boolean;

    if-nez v4, :cond_2

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Failed to restore tab: not enough info about its type was available."

    .line 12
    invoke-static {v2, p2, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    if-eqz v1, :cond_5

    .line 13
    iget-object v4, p1, LXI0;->c:Ljava/lang/String;

    invoke-static {v4}, LMm0;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 14
    iget-object v5, p1, LXI0;->e:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_5

    if-eqz v4, :cond_4

    if-eqz p3, :cond_4

    .line 15
    iget-boolean v4, p0, LYI0;->m:Z

    if-eqz v4, :cond_5

    :cond_4
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Failed to restore Incognito tab: its TabState could not be restored."

    .line 16
    invoke-static {v2, p2, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 17
    :cond_5
    iget-object v4, p0, LYI0;->b:LpI0;

    check-cast v4, LrI0;

    invoke-virtual {v4, v1}, LrI0;->b(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v4

    if-eqz v1, :cond_6

    .line 18
    iget-object v5, p0, LYI0;->o:Landroid/util/SparseIntArray;

    goto :goto_2

    :cond_6
    iget-object v5, p0, LYI0;->n:Landroid/util/SparseIntArray;

    .line 19
    :goto_2
    iget-object v6, p1, LXI0;->e:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 20
    iget-object v3, p0, LYI0;->b:LpI0;

    check-cast v3, LrI0;

    invoke-virtual {v3, v1}, LrI0;->b(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v3

    invoke-interface {v3}, LdI0;->getCount()I

    move-result v3

    goto :goto_4

    .line 21
    :cond_7
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-lez v6, :cond_8

    iget v6, p1, LXI0;->b:I

    .line 22
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v5, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-le v6, v3, :cond_8

    .line 23
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    .line 24
    :goto_3
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_b

    .line 25
    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    iget v7, p1, LXI0;->b:I

    if-le v6, v7, :cond_a

    .line 26
    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-static {v4, v3}, LFI0;->a(LdI0;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 27
    invoke-interface {v4, v3}, LdI0;->b(Lorg/chromium/chrome/browser/tab/Tab;)I

    move-result v3

    goto :goto_4

    :cond_9
    const/4 v3, -0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_b
    const/4 v3, 0x0

    .line 28
    :goto_4
    iget v6, p1, LXI0;->a:I

    const/4 v7, 0x3

    if-eqz p2, :cond_c

    .line 29
    iget-object v0, p0, LYI0;->c:LcI0;

    invoke-interface {v0, v1}, LcI0;->getTabCreator(Z)LbI0;

    move-result-object v0

    iget v1, p1, LXI0;->a:I

    invoke-virtual {v0, p2, v1, v3}, LbI0;->createFrozenTab(LtH0;II)Lorg/chromium/chrome/browser/tab/Tab;

    goto :goto_5

    .line 30
    :cond_c
    iget-object p2, p1, LXI0;->c:Ljava/lang/String;

    invoke-static {p2}, LMm0;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d

    if-nez p3, :cond_d

    iget-object p2, p1, LXI0;->e:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_d

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Skipping restore of non-selected NTP."

    .line 31
    invoke-static {v2, p2, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_d
    new-array p2, v0, [Ljava/lang/Object;

    const-string v6, "Failed to restore TabState; creating Tab with last known URL."

    .line 32
    invoke-static {v2, v6, p2}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object p2, p0, LYI0;->c:LcI0;

    invoke-interface {p2, v1}, LcI0;->getTabCreator(Z)LbI0;

    move-result-object p2

    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    iget-object v2, p1, LXI0;->c:Ljava/lang/String;

    .line 34
    invoke-direct {v1, v2, v0}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p2, v1, v7, v0}, LbI0;->createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;ILorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p2

    if-nez p2, :cond_e

    return-void

    .line 36
    :cond_e
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v6

    .line 37
    invoke-interface {v4, v6, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(II)V

    :goto_5
    if-nez p3, :cond_f

    .line 38
    iget-object p2, p1, LXI0;->e:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_10

    if-nez v3, :cond_10

    .line 39
    :cond_f
    iget-object p2, p0, LYI0;->b:LpI0;

    check-cast p2, LrI0;

    invoke-virtual {p2}, LrI0;->f()Z

    move-result p2

    .line 40
    iget-object p3, p0, LYI0;->b:LpI0;

    check-cast p3, LrI0;

    invoke-virtual {p3}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object p3

    invoke-interface {p3}, LdI0;->getCount()I

    move-result p3

    .line 41
    invoke-static {v4, v6}, LFI0;->b(LdI0;I)I

    move-result v0

    .line 42
    invoke-interface {v4, v0, v7}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->b(II)V

    .line 43
    iget-object v0, p0, LYI0;->b:LpI0;

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->f()Z

    move-result v0

    .line 44
    iget-object v1, p1, LXI0;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_10

    if-eq p2, v0, :cond_10

    if-eqz p3, :cond_10

    .line 45
    iget-object p3, p0, LYI0;->b:LpI0;

    invoke-interface {p3, p2}, LpI0;->a(Z)V

    .line 46
    :cond_10
    iget p1, p1, LXI0;->b:I

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 108
    new-instance v0, LMI0;

    invoke-direct {v0, p0, p1}, LMI0;-><init>(LYI0;Ljava/lang/String;)V

    iget-object p1, p0, LYI0;->q:LuW;

    .line 109
    invoke-virtual {v0, p1}, LkW;->executeOnTaskRunner(LCW;)LkW;

    return-void
.end method

.method public final a(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v0, p0, LYI0;->e:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 48
    iget-boolean v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->p:Z

    if-eqz v0, :cond_4

    .line 49
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "content"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LMm0;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->a()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->b()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 52
    :cond_3
    iget-object v0, p0, LYI0;->e:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final a([B)V
    .locals 2

    .line 53
    iget-object v0, p0, LYI0;->u:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-virtual {p0}, LYI0;->a()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, LYI0;->a:LGI0;

    check-cast v1, LgJ0;

    invoke-virtual {v1}, LgJ0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, LYI0;->a(Ljava/io/File;Ljava/lang/String;[B)V

    .line 55
    iput-object p1, p0, LYI0;->u:[B

    .line 56
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 57
    iget-boolean v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->a:Z

    if-eqz v0, :cond_1

    .line 58
    array-length p1, p1

    const-string v0, "Android.TabPersistentStore.MetadataFileSize"

    invoke-static {v0, p1}, LfV;->c(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 15

    .line 1
    iget-object v0, p0, LYI0;->p:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "org.chromium.chrome.browser.tabmodel.TabPersistentStore.HAS_COMPUTED_MAX_ID"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 3
    :try_start_0
    sget-object v3, LPI0;->a:Ljava/io/File;

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 5
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v4, :cond_6

    aget-object v7, v3, v5

    .line 6
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_4

    .line 7
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_4

    .line 8
    :cond_2
    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_5

    aget-object v10, v7, v9

    .line 9
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, LtH0;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 10
    iget-object v10, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_3

    .line 11
    :cond_3
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "tab_state"

    .line 12
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v11, :cond_4

    const/4 v11, 0x0

    .line 13
    :try_start_1
    new-instance v12, Ljava/io/DataInputStream;

    new-instance v13, Ljava/io/BufferedInputStream;

    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v13, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v12, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :try_start_2
    invoke-static {v12, v11, v11, v1}, LYI0;->a(Ljava/io/DataInputStream;LRI0;Landroid/util/SparseBooleanArray;Z)I

    move-result v10

    .line 15
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :try_start_3
    invoke-static {v12}, LpU;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v11, v12

    goto :goto_2

    :catchall_1
    move-exception v1

    :goto_2
    invoke-static {v11}, LpU;->a(Ljava/io/Closeable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    move v1, v6

    .line 17
    :cond_7
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 18
    invoke-static {}, LnH0;->a()LnH0;

    move-result-object v0

    invoke-virtual {v0, v1}, LnH0;->a(I)V

    .line 19
    iget-object v0, p0, LYI0;->p:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, LZi;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void

    :catchall_2
    move-exception v1

    .line 20
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public final c()V
    .locals 6

    .line 1
    iget-boolean v0, p0, LYI0;->k:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LYI0;->f:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, LYI0;->n:Landroid/util/SparseIntArray;

    .line 4
    iput-object v0, p0, LYI0;->o:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, LYI0;->v:Z

    .line 6
    iget-object v2, p0, LYI0;->a:LGI0;

    check-cast v2, LgJ0;

    invoke-virtual {v2}, LgJ0;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    sget-object v2, LZ01;->a:LFW;

    new-instance v3, LKI0;

    invoke-direct {v3, p0}, LKI0;-><init>(LYI0;)V

    const-wide/16 v4, 0x0

    .line 8
    invoke-static {v2, v3, v4, v5}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    .line 9
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, LYI0;->t:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 10
    invoke-virtual {p0, v3}, LYI0;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v2, p0, LYI0;->d:LWT;

    invoke-virtual {v2}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LWI0;

    if-eqz v3, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    throw v0

    .line 13
    :cond_3
    iget-object v2, p0, LYI0;->a:LGI0;

    new-instance v3, LLI0;

    invoke-direct {v3, p0}, LLI0;-><init>(LYI0;)V

    check-cast v2, LgJ0;

    invoke-virtual {v2, v3}, LgJ0;->a(Lorg/chromium/base/Callback;)V

    .line 14
    iget-object v2, p0, LYI0;->d:LWT;

    invoke-virtual {v2}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LWI0;

    .line 15
    sget-object v4, LZ01;->a:LFW;

    new-instance v5, LHI0;

    invoke-direct {v5, v3}, LHI0;-><init>(LWI0;)V

    invoke-static {v4, v5}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 16
    :cond_4
    iput-object v0, p0, LYI0;->h:LQI0;

    .line 17
    iget-object v0, p0, LYI0;->b:LpI0;

    check-cast v0, LrI0;

    invoke-virtual {v0, v1}, LrI0;->b(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0}, LdI0;->getCount()I

    iget-object v0, p0, LYI0;->b:LpI0;

    const/4 v1, 0x1

    .line 18
    check-cast v0, LrI0;

    invoke-virtual {v0, v1}, LrI0;->b(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0}, LdI0;->getCount()I

    goto :goto_3

    .line 19
    :cond_5
    iget-object v0, p0, LYI0;->f:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXI0;

    .line 20
    new-instance v1, LQI0;

    invoke-direct {v1, p0, v0}, LQI0;-><init>(LYI0;LXI0;)V

    iput-object v1, p0, LYI0;->h:LQI0;

    .line 21
    iget-object v0, p0, LYI0;->q:LuW;

    invoke-virtual {v1, v0}, LkW;->executeOnTaskRunner(LCW;)LkW;

    :goto_3
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, LYI0;->i:LTI0;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LYI0;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, LYI0;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/Tab;

    .line 4
    new-instance v1, LTI0;

    invoke-direct {v1, p0, v0}, LTI0;-><init>(LYI0;Lorg/chromium/chrome/browser/tab/Tab;)V

    iput-object v1, p0, LYI0;->i:LTI0;

    .line 5
    iget-object v0, p0, LYI0;->q:LuW;

    invoke-virtual {v1, v0}, LkW;->executeOnTaskRunner(LCW;)LkW;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, LYI0;->e()V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, LYI0;->j:LSI0;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LkW;->cancel(Z)Z

    .line 2
    :cond_0
    new-instance v0, LSI0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LSI0;-><init>(LYI0;LII0;)V

    iput-object v0, p0, LYI0;->j:LSI0;

    .line 3
    iget-object v1, p0, LYI0;->q:LuW;

    invoke-virtual {v0, v1}, LkW;->executeOnTaskRunner(LCW;)LkW;

    return-void
.end method

.method public final f()LVI0;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, LYI0;->h:LQI0;

    if-eqz v1, :cond_0

    iget-object v1, v1, LQI0;->a:LXI0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    iget-object v1, p0, LYI0;->f:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LXI0;

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, LYI0;->b:LpI0;

    .line 6
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 7
    check-cast v1, LrI0;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, LrI0;->b(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v2

    .line 8
    new-instance v3, LUI0;

    invoke-interface {v2}, LdI0;->index()I

    move-result v4

    invoke-direct {v3, v4}, LUI0;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 9
    :goto_1
    invoke-interface {v2}, LdI0;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 10
    iget-object v6, v3, LUI0;->b:Ljava/util/List;

    invoke-interface {v2, v5}, LdI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v6, v3, LUI0;->c:Ljava/util/List;

    invoke-interface {v2, v5}, LdI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v1, v4}, LrI0;->b(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    .line 13
    new-instance v2, LUI0;

    invoke-interface {v1}, LdI0;->index()I

    move-result v5

    invoke-direct {v2, v5}, LUI0;-><init>(I)V

    const/4 v5, 0x0

    .line 14
    :goto_2
    invoke-interface {v1}, LdI0;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 15
    iget-object v6, v2, LUI0;->b:Ljava/util/List;

    invoke-interface {v1, v5}, LdI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v6, v2, LUI0;->c:Ljava/util/List;

    invoke-interface {v1, v5}, LdI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 17
    :cond_3
    invoke-interface {v1}, LdI0;->index()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 18
    invoke-interface {v1, v5}, LdI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v6

    .line 19
    :cond_4
    sget-object v1, LyT;->a:Landroid/content/SharedPreferences;

    .line 20
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v5, "org.chromium.chrome.browser.tabmodel.TabPersistentStore.ACTIVE_TAB_ID"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 21
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 22
    iget-object v1, v2, LUI0;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 23
    iget-object v5, v3, LUI0;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int v6, v5, v1

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v7, v6

    .line 25
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 26
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v9, 0x5

    .line 27
    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 28
    invoke-virtual {v8, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 29
    invoke-virtual {v8, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 30
    iget v7, v3, LUI0;->a:I

    invoke-virtual {v8, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 31
    iget v7, v2, LUI0;->a:I

    add-int/2addr v7, v5

    invoke-virtual {v8, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v5, :cond_5

    .line 33
    iget-object v9, v3, LUI0;->b:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 34
    iget-object v9, v3, LUI0;->c:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-ge v4, v1, :cond_6

    .line 35
    iget-object v5, v2, LUI0;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 36
    iget-object v5, v2, LUI0;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 37
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LXI0;

    .line 38
    iget v5, v4, LXI0;->a:I

    invoke-virtual {v8, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 39
    iget-object v4, v4, LXI0;->c:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_5

    .line 40
    :cond_7
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 41
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 42
    new-instance v4, LVI0;

    invoke-direct {v4, v1, v2, v3, v0}, LVI0;-><init>([BLUI0;LUI0;Ljava/util/List;)V

    return-object v4
.end method
