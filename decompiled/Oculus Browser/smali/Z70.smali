.class public LZ70;
.super LkW;
.source "PG"


# instance fields
.field public a:La80;

.field public final synthetic b:Le80;


# direct methods
.method public constructor <init>(Le80;La80;)V
    .locals 0

    .line 1
    iput-object p1, p0, LZ70;->b:Le80;

    invoke-direct {p0}, LkW;-><init>()V

    .line 2
    iput-object p2, p0, LZ70;->a:La80;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;I)LN70;
    .locals 8

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v7, LN70;

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v4

    move-object v0, v7

    move v6, p2

    invoke-direct/range {v0 .. v6}, LN70;-><init>(Ljava/lang/String;JJI)V

    return-object v7
.end method

.method public doInBackground()Ljava/lang/Object;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, LZ70;->a:La80;

    check-cast v1, Lb80;

    invoke-virtual {v1}, Lb80;->b()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, LN70;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, LN70;-><init>(Ljava/lang/String;JJI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v1, v2}, LZ70;->a(Ljava/io/File;I)LN70;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, LZ70;->b:Le80;

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    const/4 v1, 0x3

    const-string v4, "MobileDownload.Location.DirectoryType"

    .line 7
    invoke-static {v4, v2, v1}, LfV;->a(Ljava/lang/String;II)V

    .line 8
    iget-object v5, p0, LZ70;->b:Le80;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 9
    iput-object v6, v5, Le80;->f:Ljava/lang/String;

    .line 10
    iget-object v5, p0, LZ70;->a:La80;

    check-cast v5, Lb80;

    invoke-virtual {v5}, Lb80;->a()[Ljava/io/File;

    move-result-object v5

    .line 11
    array-length v6, v5

    const/4 v7, 0x1

    if-gt v6, v7, :cond_1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    .line 12
    :goto_0
    array-length v8, v5

    if-ge v2, v8, :cond_4

    .line 13
    aget-object v8, v5, v2

    if-nez v8, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    aget-object v8, v5, v2

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, LZ70;->b:Le80;

    .line 15
    iget-object v9, v9, Le80;->f:Ljava/lang/String;

    .line 16
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    aget-object v6, v5, v2

    invoke-virtual {p0, v6, v7}, LZ70;->a(Ljava/io/File;I)LN70;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v6, :cond_6

    .line 18
    iget-object v2, p0, LZ70;->b:Le80;

    if-eqz v2, :cond_5

    .line 19
    invoke-static {v4, v7, v1}, LfV;->a(Ljava/lang/String;II)V

    goto :goto_2

    .line 20
    :cond_5
    throw v3

    :cond_6
    :goto_2
    return-object v0

    .line 21
    :cond_7
    throw v3
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    iget-object v0, p0, LZ70;->b:Le80;

    .line 3
    iput-object p1, v0, Le80;->e:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Le80;->b:Z

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, v0, Le80;->c:Z

    .line 6
    iget-object p1, v0, Le80;->g:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/Callback;

    .line 8
    iget-object v1, p0, LZ70;->b:Le80;

    .line 9
    iget-object v1, v1, Le80;->e:Ljava/util/ArrayList;

    .line 10
    invoke-interface {v0, v1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, LZ70;->b:Le80;

    .line 12
    iget-object p1, p1, Le80;->g:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 14
    iget-object p1, p0, LZ70;->b:Le80;

    const/4 v0, 0x0

    .line 15
    iput-object v0, p1, Le80;->d:LZ70;

    return-void
.end method
