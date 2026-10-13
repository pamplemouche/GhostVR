.class public Lxx0;
.super LEx0;
.source "PG"

# interfaces
.implements Lox0;


# instance fields
.field public a:Landroid/content/ContentResolver;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Lpx0;

.field public k:LCx0;

.field public l:Landroid/content/ServiceConnection;

.field public m:Ljava/util/LinkedHashMap;

.field public n:Ljava/util/LinkedHashMap;

.field public o:Ljava/util/LinkedHashMap;

.field public p:Ljava/util/List;

.field public q:Z

.field public final r:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lxx0;

    return-void
.end method

.method public constructor <init>(Lwx0;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LEx0;-><init>()V

    .line 2
    new-instance v0, Ltx0;

    invoke-direct {v0, p0}, Ltx0;-><init>(Lxx0;)V

    iput-object v0, p0, Lxx0;->l:Landroid/content/ServiceConnection;

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lxx0;->m:Ljava/util/LinkedHashMap;

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lxx0;->n:Ljava/util/LinkedHashMap;

    .line 5
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lxx0;->o:Ljava/util/LinkedHashMap;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxx0;->p:Ljava/util/List;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iput-object p2, p0, Lxx0;->r:Landroid/content/Context;

    .line 9
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lxx0;->a:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 12

    .line 1
    iget-object v0, p0, Lxx0;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lxx0;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lux0;

    .line 3
    iget-object v3, p0, Lxx0;->m:Ljava/util/LinkedHashMap;

    iget-object v4, v2, Lux0;->a:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget v3, v2, Lux0;->c:I

    if-ne v3, v1, :cond_3

    .line 5
    new-instance v4, Lux0;

    iget-object v5, v2, Lux0;->a:Landroid/net/Uri;

    iget v6, v2, Lux0;->b:I

    iget-object v7, v2, Lux0;->d:Lvx0;

    invoke-direct {v4, v5, v6, v3, v7}, Lux0;-><init>(Landroid/net/Uri;IILvx0;)V

    .line 6
    iget-object v3, p0, Lxx0;->n:Ljava/util/LinkedHashMap;

    iget-object v5, v2, Lux0;->a:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 7
    :cond_0
    iget-object v2, p0, Lxx0;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lux0;

    .line 8
    iget-object v4, v3, Lux0;->a:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 9
    iget-object v5, p0, Lxx0;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v2, p0, Lxx0;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_7

    .line 11
    iget-object v4, p0, Lxx0;->o:Ljava/util/LinkedHashMap;

    iget-object v5, v2, Lux0;->a:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v2, Lux0;->e:J

    .line 13
    iget v4, v2, Lux0;->c:I

    if-eq v4, v1, :cond_5

    const-string v0, "ImageDecoderHost"

    .line 14
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 15
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 16
    :try_start_0
    iget-object v5, p0, Lxx0;->a:Landroid/content/ContentResolver;

    iget-object v6, v2, Lux0;->a:Landroid/net/Uri;

    const-string v7, "r"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :try_start_1
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    if-nez v5, :cond_4

    .line 18
    iget-object v0, v2, Lux0;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lxx0;->a(Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 19
    :cond_4
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 20
    iget-object v4, v2, Lux0;->a:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v6, "file_path"

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "file_descriptor"

    .line 21
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 22
    iget v4, v2, Lux0;->b:I

    const-string v6, "size"

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    :try_start_2
    iget-object v4, p0, Lxx0;->k:LCx0;

    invoke-interface {v4, v1, p0}, LCx0;->a(Landroid/os/Bundle;LFx0;)V

    .line 24
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v1

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Communications failed (IO): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget-object v0, v2, Lux0;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lxx0;->a(Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;J)V

    goto/16 :goto_5

    :catch_1
    move-exception v1

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Communications failed (Remote): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-object v0, v2, Lux0;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lxx0;->a(Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;J)V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v1

    .line 29
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to obtain FileDescriptor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v0, v2, Lux0;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lxx0;->a(Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    :goto_2
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_5

    :goto_3
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    :cond_5
    if-eqz v0, :cond_6

    const/4 v0, 0x1

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    const/16 v0, 0xa

    const/16 v8, 0xa

    :goto_4
    const/16 v0, 0x7d0

    .line 32
    new-instance v1, Lpx0;

    iget-object v5, p0, Lxx0;->a:Landroid/content/ContentResolver;

    iget-object v6, v2, Lux0;->a:Landroid/net/Uri;

    iget v7, v2, Lux0;->b:I

    int-to-long v9, v0

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lpx0;-><init>(Lox0;Landroid/content/ContentResolver;Landroid/net/Uri;IIJ)V

    iput-object v1, p0, Lxx0;->j:Lpx0;

    .line 33
    sget-object v0, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    :goto_5
    return-void

    .line 34
    :cond_7
    iget-object v0, p0, Lxx0;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 35
    :cond_8
    iget v0, p0, Lxx0;->b:I

    iget v1, p0, Lxx0;->c:I

    add-int/2addr v0, v1

    iget v2, p0, Lxx0;->d:I

    add-int/2addr v0, v2

    if-lez v0, :cond_9

    mul-int/lit8 v1, v1, 0x64

    .line 36
    div-int/2addr v1, v0

    const-string v2, "Android.PhotoPicker.DecoderHostFailureRuntime"

    .line 37
    invoke-static {v2, v1}, LfV;->d(Ljava/lang/String;I)V

    .line 38
    iget v1, p0, Lxx0;->d:I

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    const-string v0, "Android.PhotoPicker.DecoderHostFailureOutOfMemory"

    .line 39
    invoke-static {v0, v1}, LfV;->d(Ljava/lang/String;I)V

    .line 40
    iput v3, p0, Lxx0;->b:I

    .line 41
    iput v3, p0, Lxx0;->c:I

    .line 42
    iput v3, p0, Lxx0;->d:I

    .line 43
    :cond_9
    iget v0, p0, Lxx0;->e:I

    iget v1, p0, Lxx0;->f:I

    add-int/2addr v0, v1

    iget v2, p0, Lxx0;->g:I

    add-int/2addr v0, v2

    iget v2, p0, Lxx0;->h:I

    add-int/2addr v0, v2

    iget v2, p0, Lxx0;->i:I

    add-int/2addr v0, v2

    if-lez v0, :cond_a

    mul-int/lit8 v1, v1, 0x64

    .line 44
    div-int/2addr v1, v0

    const-string v2, "Android.PhotoPicker.DecoderHostVideoFileError"

    .line 45
    invoke-static {v2, v1}, LfV;->d(Ljava/lang/String;I)V

    .line 46
    iget v1, p0, Lxx0;->g:I

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    const-string v2, "Android.PhotoPicker.DecoderHostVideoRuntimeError"

    .line 47
    invoke-static {v2, v1}, LfV;->d(Ljava/lang/String;I)V

    .line 48
    iget v1, p0, Lxx0;->h:I

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    const-string v2, "Android.PhotoPicker.DecoderHostVideoIoError"

    .line 49
    invoke-static {v2, v1}, LfV;->d(Ljava/lang/String;I)V

    .line 50
    iget v1, p0, Lxx0;->i:I

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    const-string v0, "Android.PhotoPicker.DecoderHostVideoUnknownError"

    .line 51
    invoke-static {v0, v1}, LfV;->d(Ljava/lang/String;I)V

    .line 52
    iput v3, p0, Lxx0;->e:I

    .line 53
    iput v3, p0, Lxx0;->f:I

    .line 54
    iput v3, p0, Lxx0;->g:I

    .line 55
    iput v3, p0, Lxx0;->h:I

    .line 56
    iput v3, p0, Lxx0;->i:I

    :cond_a
    return-void
.end method

.method public a(Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;I)V
    .locals 7

    const/4 v0, 0x1

    if-eqz p4, :cond_3

    if-eq p4, v0, :cond_2

    const/4 v1, 0x2

    if-eq p4, v1, :cond_1

    const/4 v1, 0x3

    if-eq p4, v1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget p4, p0, Lxx0;->h:I

    add-int/2addr p4, v0

    iput p4, p0, Lxx0;->h:I

    goto :goto_1

    .line 2
    :cond_1
    iget p4, p0, Lxx0;->g:I

    add-int/2addr p4, v0

    iput p4, p0, Lxx0;->g:I

    goto :goto_1

    .line 3
    :cond_2
    iget p4, p0, Lxx0;->f:I

    add-int/2addr p4, v0

    iput p4, p0, Lxx0;->f:I

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_5

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    if-nez p4, :cond_4

    goto :goto_0

    .line 5
    :cond_4
    iget p4, p0, Lxx0;->e:I

    add-int/2addr p4, v0

    iput p4, p0, Lxx0;->e:I

    goto :goto_1

    .line 6
    :cond_5
    :goto_0
    iget p4, p0, Lxx0;->i:I

    add-int/2addr p4, v0

    iput p4, p0, Lxx0;->i:I

    .line 7
    :goto_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lxx0;->a(Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;J)V

    return-void
.end method

.method public a(Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;J)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-wide/from16 v10, p5

    .line 8
    iget-object v1, v0, Lxx0;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lux0;

    if-eqz v1, :cond_d

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v12, 0x1

    if-eqz p2, :cond_1

    .line 10
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v12, :cond_0

    .line 11
    iget-wide v4, v1, Lux0;->e:J

    sub-long/2addr v2, v4

    const-string v4, "Android.PhotoPicker.RequestProcessTimeAnimation"

    invoke-static {v4, v2, v3}, LfV;->c(Ljava/lang/String;J)V

    goto :goto_0

    .line 12
    :cond_0
    iget-wide v4, v1, Lux0;->e:J

    sub-long/2addr v2, v4

    const-string v4, "Android.PhotoPicker.RequestProcessTimeThumbnail"

    invoke-static {v4, v2, v3}, LfV;->c(Ljava/lang/String;J)V

    goto :goto_0

    .line 13
    :cond_1
    iget-wide v4, v1, Lux0;->e:J

    sub-long/2addr v2, v4

    const-string v4, "Android.PhotoPicker.RequestProcessTime"

    invoke-static {v4, v2, v3}, LfV;->c(Ljava/lang/String;J)V

    .line 14
    :goto_0
    iget-object v1, v1, Lux0;->d:Lvx0;

    move-object v13, v1

    check-cast v13, LMx0;

    if-eqz v13, :cond_c

    const/4 v14, 0x0

    if-eqz v8, :cond_8

    .line 15
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_1

    :cond_2
    if-nez p2, :cond_3

    .line 16
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8

    .line 17
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_1

    .line 18
    :cond_3
    iget-object v1, v13, LMx0;->P:LTx0;

    .line 19
    invoke-virtual {v1}, LTx0;->b()Landroid/util/LruCache;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LSx0;

    if-eqz v1, :cond_4

    .line 20
    iget-object v1, v1, LSx0;->a:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 22
    :cond_4
    iget-object v1, v13, LMx0;->P:LTx0;

    invoke-virtual {v1}, LTx0;->b()Landroid/util/LruCache;

    move-result-object v1

    new-instance v2, LSx0;

    invoke-direct {v2, v8, v9}, LSx0;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v7, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_5
    iget-object v1, v13, LMx0;->P:LTx0;

    invoke-virtual {v1}, LTx0;->c()Landroid/util/LruCache;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    .line 24
    iget-object v1, v13, LMx0;->Q:Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 25
    new-instance v15, Lmx0;

    iget-object v2, v13, LMx0;->P:LTx0;

    invoke-virtual {v2}, LTx0;->c()Landroid/util/LruCache;

    move-result-object v2

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    const v4, 0x7f070258

    .line 26
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object v1, v15

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lmx0;-><init>(Landroid/util/LruCache;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 27
    invoke-virtual {v15, v1}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    .line 28
    :cond_6
    invoke-virtual {v13}, LMx0;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    .line 29
    :cond_7
    iget-object v1, v13, LMx0;->Q:Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;

    invoke-virtual {v1, v8, v9}, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 30
    iget-object v1, v13, LMx0;->Q:Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;

    .line 31
    iget-object v2, v1, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->R:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 32
    iget-object v1, v1, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->R:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_8
    :goto_1
    const-wide/16 v1, -0x1

    cmp-long v3, v10, v1

    if-eqz v3, :cond_b

    if-eqz v8, :cond_b

    .line 33
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 34
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    div-int/lit16 v1, v1, 0x400

    const/16 v2, 0x32

    const v3, 0x186a0

    if-eqz p2, :cond_a

    .line 35
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v12, :cond_9

    const-string v1, "Android.PhotoPicker.VideoDecodeTimeAnimation"

    .line 36
    invoke-static {v1, v10, v11}, LfV;->c(Ljava/lang/String;J)V

    goto :goto_2

    :cond_9
    const-string v4, "Android.PhotoPicker.VideoDecodeTimeThumbnail"

    .line 37
    invoke-static {v4, v10, v11}, LfV;->c(Ljava/lang/String;J)V

    const-string v4, "Android.PhotoPicker.VideoByteCount"

    .line 38
    invoke-static {v4, v1, v12, v3, v2}, LfV;->a(Ljava/lang/String;IIII)V

    goto :goto_2

    :cond_a
    const-string v4, "Android.PhotoPicker.ImageDecodeTime"

    .line 39
    invoke-static {v4, v10, v11}, LfV;->c(Ljava/lang/String;J)V

    const-string v4, "Android.PhotoPicker.ImageByteCount"

    .line 40
    invoke-static {v4, v1, v12, v3, v2}, LfV;->a(Ljava/lang/String;IIII)V

    .line 41
    :cond_b
    :goto_2
    iget-object v1, v0, Lxx0;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v7}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_c
    const/4 v1, 0x0

    .line 42
    throw v1

    .line 43
    :cond_d
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lxx0;->A()V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, Lsx0;

    invoke-direct {v1, p0, p1}, Lsx0;-><init>(Lxx0;Landroid/os/Bundle;)V

    invoke-static {v0, v1}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;)V

    return-void
.end method
