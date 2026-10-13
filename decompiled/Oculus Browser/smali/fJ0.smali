.class public LfJ0;
.super LkW;
.source "PG"


# instance fields
.field public final a:Lorg/chromium/base/Callback;

.field public b:[Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:Landroid/util/SparseBooleanArray;

.field public final synthetic e:LgJ0;


# direct methods
.method public constructor <init>(LgJ0;Lorg/chromium/base/Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, LfJ0;->e:LgJ0;

    invoke-direct {p0}, LkW;-><init>()V

    .line 2
    iput-object p2, p0, LfJ0;->a:Lorg/chromium/base/Callback;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 1

    .line 3
    invoke-super {p0, p1}, LkW;->onCancelled(Ljava/lang/Object;)V

    .line 4
    sget-object p1, LgJ0;->i:Ljava/lang/Object;

    .line 5
    monitor-enter p1

    const/4 v0, 0x0

    .line 6
    :try_start_0
    sput-object v0, LgJ0;->l:LkW;

    .line 7
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(ILdJ0;)Z
    .locals 2

    .line 1
    invoke-virtual {p2, p1}, LdJ0;->a(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 2
    iget-object p2, p0, LfJ0;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public c()V
    .locals 8

    .line 1
    iget-object v0, p0, LfJ0;->e:LgJ0;

    .line 2
    iget-boolean v0, v0, LgJ0;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, LdJ0;->a()LdJ0;

    move-result-object v0

    .line 4
    iget-object v1, p0, LfJ0;->b:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v3, p0, LfJ0;->b:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 7
    invoke-static {v6}, LtH0;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 8
    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 9
    invoke-virtual {p0, v7, v0}, LfJ0;->a(ILdJ0;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 10
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_2
    iget-object v3, p0, LfJ0;->a:Lorg/chromium/base/Callback;

    invoke-interface {v3, v1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 12
    :cond_3
    iget-object v1, p0, LfJ0;->e:LgJ0;

    .line 13
    iget-object v1, v1, LgJ0;->e:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    if-eqz v1, :cond_5

    .line 14
    iget-object v1, p0, LfJ0;->c:[Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 15
    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v4, v1, v2

    .line 16
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 17
    invoke-virtual {p0, v4, v0}, LfJ0;->a(ILdJ0;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 18
    iget-object v5, p0, LfJ0;->e:LgJ0;

    .line 19
    iget-object v5, v5, LgJ0;->e:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    .line 20
    invoke-virtual {v5, v4}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->a(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 21
    :cond_5
    sget-object v0, LgJ0;->i:Ljava/lang/Object;

    .line 22
    monitor-enter v0

    const/4 v1, 0x0

    .line 23
    :try_start_1
    sput-object v1, LgJ0;->l:LkW;

    .line 24
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public doInBackground()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, LfJ0;->e:LgJ0;

    .line 2
    iget-boolean v0, v0, LgJ0;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    invoke-static {}, LgJ0;->d()Ljava/io/File;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LfJ0;->b:[Ljava/lang/String;

    .line 5
    invoke-static {}, Lorg/chromium/base/PathUtils;->getThumbnailCacheDirectory()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LfJ0;->c:[Ljava/lang/String;

    .line 7
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, LfJ0;->d:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_4

    .line 8
    iget-object v4, p0, LfJ0;->e:LgJ0;

    .line 9
    iget v4, v4, LgJ0;->b:I

    if-ne v3, v4, :cond_1

    goto :goto_4

    .line 10
    :cond_1
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, LfJ0;->e:LgJ0;

    if-eqz v5, :cond_3

    .line 11
    invoke-static {}, LgJ0;->d()Ljava/io/File;

    move-result-object v5

    .line 12
    invoke-static {v3}, LgJ0;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 14
    :try_start_0
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :try_start_1
    invoke-static {v5, v1, v0, v2}, LYI0;->a(Ljava/io/DataInputStream;LRI0;Landroid/util/SparseBooleanArray;Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v6

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v5

    move-object v6, v5

    move-object v5, v1

    :goto_1
    :try_start_2
    const-string v7, "tabmodel"

    .line 16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to read state for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v7, v4, v6}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 17
    :goto_2
    invoke-static {v5}, LpU;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v5

    :goto_3
    invoke-static {v1}, LpU;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_2
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    :cond_3
    throw v1

    :cond_4
    :goto_5
    return-object v1
.end method

.method public bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, LfJ0;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0}, LfJ0;->c()V

    return-void
.end method
