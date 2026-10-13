.class public LUP0;
.super LkW;
.source "PG"


# instance fields
.field public final synthetic a:LUf1;

.field public final synthetic b:[Leg1;

.field public final synthetic c:LVD0;


# direct methods
.method public constructor <init>(LVP0;LUf1;[Leg1;LVD0;)V
    .locals 0

    .line 1
    iput-object p2, p0, LUP0;->a:LUf1;

    iput-object p3, p0, LUP0;->b:[Leg1;

    iput-object p4, p0, LUP0;->c:LVD0;

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 13

    const-string v0, "share"

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, LUP0;->b:[Leg1;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, LUP0;->b:[Leg1;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3
    :try_start_0
    sget-object v5, LzT;->a:Landroid/content/Context;

    .line 4
    invoke-static {v5}, Lwc1;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 5
    new-instance v6, Ljava/io/File;

    const-string v7, "screenshot"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to create directory for shared file."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    const/4 v5, 0x0

    .line 8
    :goto_1
    iget-object v7, p0, LUP0;->b:[Leg1;

    array-length v7, v7

    if-ge v5, v7, :cond_2

    .line 9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, LUP0;->b:[Leg1;

    aget-object v8, v8, v5

    iget-object v8, v8, Leg1;->b:Ljava/lang/String;

    .line 10
    invoke-static {v8}, LFT;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-static {v0, v7, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    .line 12
    invoke-static {v7}, Lorg/chromium/base/ContentUriUtils;->a(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v8, LSP0;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-wide/32 v10, 0x3200000

    invoke-direct {v8, v9, v10, v11}, LSP0;-><init>(Ljava/io/OutputStream;J)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 14
    :cond_2
    iget-object v0, p0, LUP0;->c:LVD0;

    iget-object v5, p0, LUP0;->b:[Leg1;

    if-eqz v5, :cond_9

    .line 15
    array-length v6, v5

    if-nez v6, :cond_3

    goto :goto_3

    .line 16
    :cond_3
    aget-object v6, v5, v3

    iget-object v6, v6, Leg1;->c:LWX;

    iget-object v6, v6, LWX;->c:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 17
    array-length v8, v6

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    goto :goto_3

    :cond_4
    const/4 v8, 0x1

    .line 18
    :goto_2
    array-length v10, v5

    if-ge v8, v10, :cond_8

    .line 19
    aget-object v10, v5, v8

    iget-object v10, v10, Leg1;->c:LWX;

    iget-object v10, v10, LWX;->c:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 20
    array-length v11, v10

    if-eq v11, v9, :cond_5

    goto :goto_3

    .line 21
    :cond_5
    aget-object v11, v10, v3

    aget-object v12, v6, v3

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    goto :goto_3

    .line 22
    :cond_6
    aget-object v10, v10, v4

    aget-object v11, v6, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "*"

    .line 23
    aput-object v10, v6, v4

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 24
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v6, v3

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_9
    :goto_3
    const-string v5, "*/*"

    .line 25
    :goto_4
    iput-object v5, v0, LVD0;->g:Ljava/lang/String;

    .line 26
    iget-object v0, p0, LUP0;->c:LVD0;

    .line 27
    iput-object v1, v0, LVD0;->h:Ljava/util/ArrayList;

    .line 28
    new-instance v1, LYP0;

    .line 29
    invoke-virtual {v0}, LVD0;->a()LWD0;

    move-result-object v0

    iget-object v5, p0, LUP0;->a:LUf1;

    invoke-direct {v1, v0, v5}, LYP0;-><init>(LWD0;LUf1;)V

    .line 30
    :goto_5
    iget-object v0, p0, LUP0;->b:[Leg1;

    array-length v0, v0

    if-ge v3, v0, :cond_a

    .line 31
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSP0;

    iget-object v5, p0, LUP0;->b:[Leg1;

    aget-object v5, v5, v3

    iget-object v5, v5, Leg1;->c:LWX;

    iget-object v5, v5, LWX;->e:LjX;

    .line 32
    iput-object v1, v0, LSP0;->C:Lorg/chromium/base/Callback;

    .line 33
    new-instance v6, Lm71;

    invoke-direct {v6}, Lm71;-><init>()V

    .line 34
    iput v4, v6, Lm71;->b:I

    const/high16 v7, 0x20000

    .line 35
    iput v7, v6, Lm71;->c:I

    .line 36
    sget-object v7, LK71;->a:Lj71;

    .line 37
    invoke-interface {v7, v6}, Lj71;->a(Lm71;)Lz71;

    move-result-object v6

    .line 38
    iget-object v7, v6, Lz71;->b:Ljava/lang/Object;

    check-cast v7, Lk71;

    iput-object v7, v0, LSP0;->B:Lk71;

    .line 39
    iget-object v6, v6, Lz71;->a:Ljava/lang/Object;

    check-cast v6, Ln71;

    check-cast v5, LFX;

    invoke-virtual {v5, v6, v0}, LFX;->a(Ln71;LlX;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 40
    :cond_a
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_6

    :catch_0
    move-exception v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const-string v1, "Error creating shared file"

    .line 41
    invoke-static {v0, v1, v2}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_6
    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, LUP0;->a:LUf1;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p1, Lbg1;

    invoke-virtual {p1, v0}, Lbg1;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
