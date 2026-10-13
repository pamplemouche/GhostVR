.class public final synthetic Lsx0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lxx0;

.field public final x:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lxx0;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsx0;->w:Lxx0;

    iput-object p2, p0, Lsx0;->x:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lsx0;->w:Lxx0;

    iget-object v1, p0, Lsx0;->x:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v3, ""

    const/4 v4, 0x1

    const-wide/16 v5, -0x1

    :try_start_0
    const-string v7, "file_path"

    .line 1
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "success"

    .line 2
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 3
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "image_bitmap"

    .line 4
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    move-object v7, v2

    :goto_0
    const-string v8, "decode_time"

    .line 5
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 6
    iget v1, v0, Lxx0;->b:I

    add-int/2addr v1, v4

    iput v1, v0, Lxx0;->b:I

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v3

    move-object v3, v1

    move-object v1, v9

    goto :goto_5

    :catchall_0
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_1

    :catch_0
    move-object v2, v1

    goto :goto_2

    :catch_1
    move-object v2, v1

    goto :goto_3

    :catchall_1
    move-exception v1

    :goto_1
    move-object v7, v1

    move-object v1, v3

    move-object v3, v2

    goto :goto_6

    .line 9
    :catch_2
    :goto_2
    :try_start_2
    iget v1, v0, Lxx0;->d:I

    add-int/2addr v1, v4

    iput v1, v0, Lxx0;->d:I

    goto :goto_4

    .line 10
    :catch_3
    :goto_3
    iget v1, v0, Lxx0;->c:I

    add-int/2addr v1, v4

    iput v1, v0, Lxx0;->c:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    move-object v1, v3

    move-object v3, v2

    :goto_5
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 11
    invoke-virtual/range {v0 .. v6}, Lxx0;->a(Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;J)V

    return-void

    :goto_6
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lxx0;->a(Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;J)V

    throw v7

    .line 12
    :cond_1
    throw v2
.end method
