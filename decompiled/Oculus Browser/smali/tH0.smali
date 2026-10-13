.class public LtH0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:LsH0;

.field public b:I

.field public c:I

.field public d:J

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Ljava/lang/Integer;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, LtH0;->b:I

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, LtH0;->d:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, LtH0;->f:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/util/Pair;
    .locals 1

    :try_start_0
    const-string v0, "cryptonito"

    .line 125
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    .line 126
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 127
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 128
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "tab"

    .line 129
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 130
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 131
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/io/File;IZ)Ljava/io/File;
    .locals 1

    .line 123
    new-instance v0, Ljava/io/File;

    invoke-static {p1, p2}, LtH0;->a(IZ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(IZ)Ljava/lang/String;
    .locals 1

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "cryptonito"

    goto :goto_0

    :cond_0
    const-string p1, "tab"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/File;I)LtH0;
    .locals 5

    const/4 v0, 0x0

    .line 50
    invoke-static {p0, p1, v0}, LtH0;->a(Ljava/io/File;IZ)Ljava/io/File;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 52
    invoke-static {p0, p1, v3}, LtH0;->a(Ljava/io/File;IZ)Ljava/io/File;

    move-result-object v1

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 53
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    return-object v2

    :cond_1
    const-string p1, "TabState"

    .line 54
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    :try_start_1
    invoke-static {v4, p0}, LtH0;->a(Ljava/io/FileInputStream;Z)LtH0;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v2, v4

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v4, v2

    :goto_1
    :try_start_2
    const-string v1, "Failed to restore tab state."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    .line 56
    invoke-static {p1, v1, v3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_2
    move-object v4, v2

    .line 57
    :catch_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to restore tab state for tab: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    :goto_2
    invoke-static {v4}, LpU;->a(Ljava/io/Closeable;)V

    return-object v2

    :goto_3
    invoke-static {v2}, LpU;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Ljava/io/FileInputStream;Z)LtH0;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1
    sget-object v3, Li60;->a:Lj60;

    const/4 v4, 0x2

    .line 2
    invoke-virtual {v3, v4}, Lj60;->a(I)Ljavax/crypto/Cipher;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljavax/crypto/CipherInputStream;

    invoke-direct {v5, v0, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    if-nez v4, :cond_1

    .line 4
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 5
    :try_start_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    return-object v2

    .line 7
    :cond_2
    :try_start_1
    new-instance v3, LtH0;

    invoke-direct {v3}, LtH0;-><init>()V

    .line 8
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    iput-wide v5, v3, LtH0;->d:J

    .line 9
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, "TabState"

    const/4 v7, 0x0

    if-eqz v1, :cond_3

    .line 10
    :try_start_2
    new-array v0, v5, [B

    .line 11
    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 12
    new-instance v8, LsH0;

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-direct {v8, v5}, LsH0;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v8, v3, LtH0;->a:LsH0;

    .line 13
    iget-object v5, v8, LsH0;->a:Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 16
    new-instance v14, LsH0;

    sget-object v9, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    .line 17
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v10

    int-to-long v12, v5

    move-wide v15, v12

    invoke-virtual/range {v8 .. v13}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v8

    invoke-direct {v14, v8}, LsH0;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v14, v3, LtH0;->a:LsH0;

    move-wide v8, v15

    .line 18
    invoke-virtual {v0, v8, v9}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v10

    cmp-long v0, v10, v8

    if-eqz v0, :cond_4

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Only skipped "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " bytes when "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " should\'ve been skipped. Tab restore may fail."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v6, v0, v5}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :cond_4
    :goto_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, v3, LtH0;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, LtH0;->e:Ljava/lang/String;

    const-string v5, ""

    .line 22
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object v2, v3, LtH0;->e:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_4
    const-string v0, "Failed to read opener app id state from tab state"

    new-array v5, v7, [Ljava/lang/Object;

    .line 23
    invoke-static {v6, v0, v5}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 24
    :cond_5
    :goto_2
    :try_start_5
    iget-object v0, v3, LtH0;->a:LsH0;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 25
    iput v5, v0, LsH0;->b:I
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 26
    :catch_1
    :try_start_6
    iget-object v0, v3, LtH0;->a:LsH0;

    const-string v5, "stable"

    .line 27
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    iput v7, v0, LsH0;->b:I

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read saved state version id from tab state. Assuming version "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, LtH0;->a:LsH0;

    .line 30
    iget v5, v5, LsH0;->b:I

    .line 31
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v7, [Ljava/lang/Object;

    .line 32
    invoke-static {v6, v0, v5}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 33
    :goto_3
    :try_start_7
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 34
    :catch_2
    :try_start_8
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readBoolean()Z
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :catch_3
    :try_start_9
    const-string v0, "Failed to read shouldPreserve flag from tab state. Assuming shouldPreserve is false"

    new-array v5, v7, [Ljava/lang/Object;

    .line 35
    invoke-static {v6, v0, v5}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    :goto_4
    iput-boolean v1, v3, LtH0;->h:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 37
    :try_start_a
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, v3, LtH0;->f:I
    :try_end_a
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    .line 38
    :catch_4
    :try_start_b
    iput v7, v3, LtH0;->f:I

    const-string v0, "Failed to read theme color from tab state. Assuming theme color is TabState#UNSPECIFIED_THEME_COLOR"

    new-array v1, v7, [Ljava/lang/Object;

    .line 39
    invoke-static {v6, v0, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 40
    :goto_5
    :try_start_c
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, LtH0;->g:Ljava/lang/Integer;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_6

    iget-object v0, v3, LtH0;->g:Ljava/lang/Integer;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_7

    .line 43
    :cond_6
    iput-object v2, v3, LtH0;->g:Ljava/lang/Integer;
    :try_end_c
    .catch Ljava/io/EOFException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_6

    .line 44
    :catch_5
    :try_start_d
    iput-object v2, v3, LtH0;->g:Ljava/lang/Integer;

    const-string v0, "Failed to read tab launch type at creation from tab state. Assuming tab launch type is null"

    new-array v1, v7, [Ljava/lang/Object;

    .line 45
    invoke-static {v6, v0, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 46
    :cond_7
    :goto_6
    :try_start_e
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, v3, LtH0;->c:I
    :try_end_e
    .catch Ljava/io/EOFException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_7

    :catch_6
    const/4 v0, -0x1

    .line 47
    :try_start_f
    iput v0, v3, LtH0;->c:I

    const-string v0, "Failed to read tab root id from tab state. Assuming root id is Tab.INVALID_TAB_ID"

    new-array v1, v7, [Ljava/lang/Object;

    .line 48
    invoke-static {v6, v0, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 49
    :goto_7
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    return-object v3

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    throw v0
.end method

.method public static a(Lorg/chromium/chrome/browser/tab/Tab;)LtH0;
    .locals 8

    .line 59
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 60
    :cond_0
    new-instance v0, LtH0;

    invoke-direct {v0}, LtH0;-><init>()V

    .line 61
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->s:LsH0;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v1, v2

    goto :goto_3

    .line 62
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->t:Lorg/chromium/content_public/browser/LoadUrlParams;

    if-nez v2, :cond_2

    .line 63
    invoke-static {p0}, LJ/N;->MZObK2iK(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 64
    :cond_2
    iget-object v4, v2, Lorg/chromium/content_public/browser/LoadUrlParams;->e:Lh11;

    .line 65
    iget-object v5, v2, Lorg/chromium/content_public/browser/LoadUrlParams;->a:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 66
    iget-object v6, v4, Lh11;->a:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v6, v1

    :goto_0
    if-eqz v4, :cond_4

    .line 67
    iget v4, v4, Lh11;->b:I

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 68
    :goto_1
    iget-object v2, v2, Lorg/chromium/content_public/browser/LoadUrlParams;->b:Ljava/lang/String;

    .line 69
    iget-boolean v7, p0, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 70
    invoke-static {v5, v6, v4, v2, v7}, LJ/N;->MYB6o14Y(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    :goto_2
    if-nez v2, :cond_5

    goto :goto_3

    .line 71
    :cond_5
    new-instance v1, LsH0;

    invoke-direct {v1, v2}, LsH0;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 v2, 0x2

    .line 72
    iput v2, v1, LsH0;->b:I

    .line 73
    :goto_3
    iput-object v1, v0, LtH0;->a:LsH0;

    .line 74
    invoke-static {p0}, LdH0;->b(Lorg/chromium/chrome/browser/tab/Tab;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LtH0;->e:Ljava/lang/String;

    .line 75
    iget v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->k:I

    .line 76
    iput v1, v0, LtH0;->b:I

    .line 77
    iget-wide v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->A:J

    .line 78
    iput-wide v1, v0, LtH0;->d:J

    .line 79
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->r:Ljava/lang/Integer;

    .line 80
    iput-object v1, v0, LtH0;->g:Ljava/lang/Integer;

    .line 81
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 82
    sget-object v2, LxH0;->B:Ljava/lang/Class;

    invoke-virtual {v1, v2}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object v1

    check-cast v1, LxH0;

    .line 83
    iget-boolean v1, v1, LxH0;->A:Z

    if-eqz v1, :cond_6

    goto :goto_4

    .line 84
    :cond_6
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 85
    sget-object v2, LxH0;->B:Ljava/lang/Class;

    invoke-virtual {v1, v2}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object v1

    check-cast v1, LxH0;

    .line 86
    iget v3, v1, LxH0;->y:I

    .line 87
    :goto_4
    iput v3, v0, LtH0;->f:I

    .line 88
    iget p0, p0, Lorg/chromium/chrome/browser/tab/Tab;->m:I

    .line 89
    iput p0, v0, LtH0;->c:I

    return-object v0
.end method

.method public static a(Ljava/io/File;LtH0;Z)V
    .locals 9

    const-string v0, "TabState"

    if-eqz p1, :cond_6

    .line 90
    iget-object v1, p1, LtH0;->a:LsH0;

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 91
    :cond_0
    iget-object v1, v1, LsH0;->a:Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v3, v2, [B

    .line 93
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 94
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 95
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    .line 96
    :try_start_1
    sget-object p0, Li60;->a:Lj60;

    const/4 v6, 0x1

    .line 97
    invoke-virtual {p0, v6}, Lj60;->a(I)Ljavax/crypto/Cipher;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 98
    new-instance v6, Ljava/io/DataOutputStream;

    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v8, v5, p0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v6

    goto :goto_0

    .line 99
    :cond_1
    invoke-static {v1}, LpU;->a(Ljava/io/Closeable;)V

    .line 100
    invoke-static {v5}, LpU;->a(Ljava/io/Closeable;)V

    return-void

    .line 101
    :cond_2
    :try_start_2
    new-instance p0, Ljava/io/DataOutputStream;

    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, p0

    :goto_0
    if-eqz p2, :cond_3

    const-wide/16 v6, 0x0

    .line 102
    invoke-virtual {v1, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 103
    :cond_3
    iget-wide v6, p1, LtH0;->d:J

    invoke-virtual {v1, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 104
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 105
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 106
    iget p0, p1, LtH0;->b:I

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 107
    iget-object p0, p1, LtH0;->e:Ljava/lang/String;

    if-eqz p0, :cond_4

    iget-object p0, p1, LtH0;->e:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string p0, ""

    :goto_1
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 108
    iget-object p0, p1, LtH0;->a:LsH0;

    .line 109
    iget p0, p0, LsH0;->b:I

    .line 110
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-wide/16 v2, -0x1

    .line 111
    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 112
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 113
    iget p0, p1, LtH0;->f:I

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 114
    iget-object p0, p1, LtH0;->g:Ljava/lang/Integer;

    if-eqz p0, :cond_5

    iget-object p0, p1, LtH0;->g:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_2

    :cond_5
    const/4 p0, -0x1

    .line 115
    :goto_2
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 116
    iget p0, p1, LtH0;->c:I

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v5, v1

    goto :goto_4

    :catch_0
    move-object v5, v1

    :catch_1
    :try_start_3
    const-string p0, "IOException while attempting to save TabState."

    new-array p1, v4, [Ljava/lang/Object;

    .line 117
    invoke-static {v0, p0, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catch_2
    move-object v5, v1

    :catch_3
    const-string p0, "FileNotFoundException while attempting to save TabState."

    new-array p1, v4, [Ljava/lang/Object;

    .line 118
    invoke-static {v0, p0, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    :goto_3
    invoke-static {v1}, LpU;->a(Ljava/io/Closeable;)V

    .line 120
    invoke-static {v5}, LpU;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception p0

    .line 121
    :goto_4
    invoke-static {v1}, LpU;->a(Ljava/io/Closeable;)V

    .line 122
    invoke-static {v5}, LpU;->a(Ljava/io/Closeable;)V

    throw p0

    :cond_6
    :goto_5
    return-void
.end method
