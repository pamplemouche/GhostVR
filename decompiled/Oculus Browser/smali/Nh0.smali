.class public LNh0;
.super LkW;
.source "PG"


# instance fields
.field public final synthetic a:[Lj41;

.field public final synthetic b:Ljava/net/URI;

.field public final synthetic c:LY31;

.field public final synthetic d:LPh0;


# direct methods
.method public constructor <init>(LPh0;[Lj41;Ljava/net/URI;LY31;)V
    .locals 0

    .line 1
    iput-object p1, p0, LNh0;->d:LPh0;

    iput-object p2, p0, LNh0;->a:[Lj41;

    iput-object p3, p0, LNh0;->b:Ljava/net/URI;

    iput-object p4, p0, LNh0;->c:LY31;

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, LNh0;->d:LPh0;

    iget-object v2, v1, LNh0;->a:[Lj41;

    iget-object v3, v1, LNh0;->b:Ljava/net/URI;

    const/4 v4, 0x0

    if-eqz v0, :cond_b

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->a()V

    .line 3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v6, v0, LPh0;->x:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 5
    array-length v7, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v9, v7, :cond_9

    aget-object v11, v2, v9

    .line 6
    iget-object v12, v11, Lj41;->b:Ljava/lang/String;

    const-string v13, "play"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    iget-object v12, v11, Lj41;->d:Ljava/lang/String;

    if-eqz v12, :cond_8

    const-string v13, "instantapp"

    .line 7
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, "instantapp:holdback"

    if-nez v13, :cond_1

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v12, 0x1

    :goto_2
    if-eqz v12, :cond_3

    .line 8
    iget-object v12, v0, LPh0;->y:LSh0;

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    iget-object v11, v11, Lj41;->d:Ljava/lang/String;

    .line 9
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    if-eqz v12, :cond_2

    goto/16 :goto_6

    .line 10
    :cond_2
    throw v4

    .line 11
    :cond_3
    iget-object v12, v11, Lj41;->d:Ljava/lang/String;

    const-string v13, "HmacSHA256"

    .line 12
    sget-object v14, LQh0;->a:[B

    if-nez v14, :cond_6

    const/16 v14, 0x14

    .line 13
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v15, "/dev/urandom"

    invoke-direct {v4, v15}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-array v15, v14, [B

    .line 14
    invoke-virtual {v4, v15}, Ljava/io/FileInputStream;->read([B)I

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v14, v8, :cond_4

    .line 15
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 16
    sput-object v15, LQh0;->a:[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 17
    :cond_4
    :try_start_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v2, "Not enough random data available"

    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object/from16 v16, v4

    goto :goto_3

    :catchall_1
    move-exception v0

    const/16 v16, 0x0

    :goto_3
    if-eqz v16, :cond_5

    .line 18
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    :cond_5
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 19
    :goto_4
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 20
    :cond_6
    :goto_5
    sget-object v4, LQh0;->a:[B

    .line 21
    :try_start_5
    invoke-static {v13}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v8
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_3

    .line 22
    invoke-static {v12}, LdT;->a(Ljava/lang/String;)[B

    move-result-object v12

    .line 23
    new-instance v14, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v14, v4, v13}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 24
    :try_start_6
    invoke-virtual {v8, v14}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_6
    .catch Ljava/security/InvalidKeyException; {:try_start_6 .. :try_end_6} :catch_2

    .line 25
    invoke-virtual {v8, v12}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v4

    const/4 v8, 0x0

    .line 26
    aget-byte v12, v4, v8

    and-int/lit16 v8, v12, 0xff

    shl-int/lit8 v8, v8, 0x8

    const/4 v12, 0x1

    aget-byte v4, v4, v12

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v8

    int-to-short v4, v4

    and-int/lit16 v4, v4, 0x3ff

    .line 27
    div-int/lit8 v4, v4, 0x64

    add-int/2addr v4, v10

    .line 28
    iget-object v8, v11, Lj41;->d:Ljava/lang/String;

    invoke-static {v8, v3, v6}, LPh0;->a(Ljava/lang/String;Ljava/net/URI;Landroid/content/pm/PackageManager;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 29
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    move v10, v4

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_8
    :goto_6
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 32
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj41;

    .line 33
    :try_start_7
    iget-object v4, v0, LPh0;->x:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v6, v3, Lj41;->d:Ljava/lang/String;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_5

    const/4 v7, 0x0

    :try_start_8
    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 34
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v4, v3, Lj41;->e:Ljava/lang/String;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_7

    :catch_4
    nop

    goto :goto_7

    :catch_5
    const/4 v7, 0x0

    goto :goto_7

    .line 35
    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lj41;

    .line 36
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 37
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_b
    move-object v2, v4

    .line 38
    throw v2
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Landroid/util/Pair;

    .line 2
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [Lj41;

    .line 3
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4
    iget-object v1, p0, LNh0;->d:LPh0;

    new-instance v2, LMh0;

    invoke-direct {v2, p0, v0}, LMh0;-><init>(LNh0;[Lj41;)V

    int-to-long v3, p1

    if-eqz v1, :cond_0

    .line 5
    sget-object p1, LZ01;->a:LFW;

    invoke-static {p1, v2, v3, v4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
