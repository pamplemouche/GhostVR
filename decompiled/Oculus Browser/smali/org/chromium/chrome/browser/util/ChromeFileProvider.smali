.class public Lorg/chromium/chrome/browser/util/ChromeFileProvider;
.super LU3;
.source "PG"


# static fields
.field public static A:Ljava/lang/Object;

.field public static B:Z

.field public static C:Landroid/net/Uri;

.field public static D:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/util/ChromeFileProvider;->A:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LU3;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".FileProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0, v0, p1}, LU3;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/net/Uri;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 3
    sget-object v0, Lorg/chromium/chrome/browser/util/ChromeFileProvider;->C:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    if-eqz p0, :cond_3

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlockedFile_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/util/ChromeFileProvider;->A:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :goto_0
    :try_start_0
    sget-boolean v1, Lorg/chromium/chrome/browser/util/ChromeFileProvider;->B:Z

    if-nez v1, :cond_1

    invoke-static {p0}, Lorg/chromium/chrome/browser/util/ChromeFileProvider;->a(Landroid/net/Uri;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 4
    :try_start_1
    sget-object v1, Lorg/chromium/chrome/browser/util/ChromeFileProvider;->A:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5
    :catch_0
    :cond_1
    :try_start_2
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/ChromeFileProvider;->a(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lorg/chromium/chrome/browser/util/ChromeFileProvider;->D:Landroid/net/Uri;

    monitor-exit v0

    return-object p0

    .line 6
    :cond_2
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    :goto_1
    return-object p0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BlockedFile_"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    sget-object p2, Lorg/chromium/chrome/browser/util/ChromeFileProvider;->A:Ljava/lang/Object;

    monitor-enter p2

    .line 3
    :try_start_0
    invoke-static {p1}, Lorg/chromium/chrome/browser/util/ChromeFileProvider;->a(Landroid/net/Uri;)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    monitor-exit p2

    return v0

    :cond_0
    const/4 p3, 0x0

    .line 4
    sput-object p3, Lorg/chromium/chrome/browser/util/ChromeFileProvider;->D:Landroid/net/Uri;

    .line 5
    sput-boolean v0, Lorg/chromium/chrome/browser/util/ChromeFileProvider;->B:Z

    .line 6
    sput-object p3, Lorg/chromium/chrome/browser/util/ChromeFileProvider;->C:Landroid/net/Uri;

    .line 7
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 8
    :cond_1
    :goto_0
    iget-object p2, p0, LU3;->w:LS3;

    check-cast p2, LT3;

    invoke-virtual {p2, p1}, LT3;->a(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/chromium/chrome/browser/util/ChromeFileProvider;->b(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, LU3;->w:LS3;

    check-cast v0, LT3;

    invoke-virtual {v0, p1}, LT3;->a(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "application/octet-stream"

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/chromium/chrome/browser/util/ChromeFileProvider;->b(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 2
    iget-object v0, p0, LU3;->w:LS3;

    check-cast v0, LT3;

    invoke-virtual {v0, p1}, LT3;->a(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    const-string v0, "r"

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p2, 0x10000000

    goto :goto_1

    :cond_0
    const-string v0, "w"

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "wt"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "wa"

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 p2, 0x2a000000

    goto :goto_1

    :cond_2
    const-string v0, "rw"

    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 p2, 0x38000000

    goto :goto_1

    :cond_3
    const-string v0, "rwt"

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 p2, 0x3c000000    # 0.0078125f

    goto :goto_1

    .line 8
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid mode: "

    invoke-static {v0, p2}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    const/high16 p2, 0x2c000000

    .line 9
    :goto_1
    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .line 1
    invoke-static {p1}, Lorg/chromium/chrome/browser/util/ChromeFileProvider;->b(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return-object p3

    .line 2
    :cond_0
    iget-object p4, p0, LU3;->w:LS3;

    check-cast p4, LT3;

    invoke-virtual {p4, p1}, LT3;->a(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    if-nez p2, :cond_1

    .line 3
    sget-object p2, LU3;->x:[Ljava/lang/String;

    .line 4
    :cond_1
    array-length p4, p2

    new-array p4, p4, [Ljava/lang/String;

    .line 5
    array-length p5, p2

    new-array p5, p5, [Ljava/lang/Object;

    .line 6
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v4, p2, v2

    const-string v5, "_display_name"

    .line 7
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 8
    aput-object v5, p4, v3

    add-int/lit8 v4, v3, 0x1

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p5, v3

    goto :goto_1

    :cond_2
    const-string v5, "_size"

    .line 10
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 11
    aput-object v5, p4, v3

    add-int/lit8 v4, v3, 0x1

    .line 12
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, p5, v3

    :goto_1
    move v3, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_4
    new-array p1, v3, [Ljava/lang/String;

    .line 14
    invoke-static {p4, v1, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    new-array p2, v3, [Ljava/lang/Object;

    .line 16
    invoke-static {p5, v1, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    new-instance p4, Landroid/database/MatrixCursor;

    const/4 p5, 0x1

    invoke-direct {p4, p1, p5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 18
    invoke-virtual {p4, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p4}, Landroid/database/MatrixCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p1

    .line 20
    array-length p2, p1

    const/4 v0, 0x0

    :goto_2
    const-string v2, "_data"

    if-ge v0, p2, :cond_6

    aget-object v3, p1, v0

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object p2, p1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 22
    :cond_6
    array-length p2, p1

    add-int/2addr p2, p5

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 23
    array-length v0, p1

    aput-object v2, p2, v0

    :goto_3
    if-ne p1, p2, :cond_7

    return-object p4

    .line 24
    :cond_7
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-virtual {p4}, Landroid/database/MatrixCursor;->getCount()I

    move-result v2

    invoke-direct {v0, p2, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    const/4 p2, -0x1

    .line 25
    invoke-virtual {p4, p2}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    .line 26
    :cond_8
    invoke-virtual {p4}, Landroid/database/AbstractCursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 27
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p2

    const/4 v2, 0x0

    .line 28
    :goto_4
    array-length v3, p1

    if-ge v2, v3, :cond_8

    .line 29
    invoke-virtual {p4, v2}, Landroid/database/MatrixCursor;->getType(I)I

    move-result v3

    if-eq v3, p5, :cond_c

    const/4 v4, 0x2

    if-eq v3, v4, :cond_b

    const/4 v4, 0x3

    if-eq v3, v4, :cond_a

    const/4 v4, 0x4

    if-eq v3, v4, :cond_9

    .line 30
    invoke-virtual {p2, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_5

    .line 31
    :cond_9
    invoke-virtual {p4, v2}, Landroid/database/MatrixCursor;->getBlob(I)[B

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_5

    .line 32
    :cond_a
    invoke-virtual {p4, v2}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_5

    .line 33
    :cond_b
    invoke-virtual {p4, v2}, Landroid/database/MatrixCursor;->getFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_5

    .line 34
    :cond_c
    invoke-virtual {p4, v2}, Landroid/database/MatrixCursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 35
    :cond_d
    invoke-virtual {p4}, Landroid/database/AbstractCursor;->close()V

    return-object v0
.end method
