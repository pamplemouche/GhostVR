.class public LeJ0;
.super LlW;
.source "PG"


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z

.field public final synthetic c:LgJ0;


# direct methods
.method public constructor <init>(LgJ0;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, LeJ0;->c:LgJ0;

    iput-boolean p2, p0, LeJ0;->a:Z

    iput-boolean p3, p0, LeJ0;->b:Z

    invoke-direct {p0}, LlW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, LeJ0;->a:Z

    const-string v2, "Failed to rename file: "

    const-string v3, "tab_state"

    const-string v4, "tabmodel"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v1, :cond_5

    .line 2
    iget-object v1, v0, LeJ0;->c:LgJ0;

    if-eqz v1, :cond_4

    new-array v8, v6, [Ljava/lang/Object;

    const-string v9, "Starting to perform legacy migration."

    .line 3
    invoke-static {v4, v9, v8}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-static {}, LgJ0;->d()Ljava/io/File;

    move-result-object v8

    .line 5
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 6
    array-length v9, v9

    if-nez v9, :cond_3

    .line 7
    :cond_0
    sget-object v9, LzT;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    .line 9
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 11
    new-instance v11, Ljava/io/File;

    invoke-virtual {v1}, LgJ0;->b()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v8, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 12
    invoke-static {v2, v10}, LZi;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 14
    array-length v10, v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_3

    aget-object v12, v9, v11

    .line 15
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, LtH0;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 16
    new-instance v13, Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v8, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 17
    invoke-static {v2, v12}, LZi;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v12

    new-array v13, v6, [Ljava/lang/Object;

    invoke-static {v4, v12, v13}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 18
    :cond_3
    iget-object v1, v1, LgJ0;->a:Landroid/content/SharedPreferences;

    const-string v8, "org.chromium.chrome.browser.tabmodel.TabPersistentStore.HAS_RUN_FILE_MIGRATION"

    invoke-static {v1, v8, v7}, LZi;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    new-array v1, v6, [Ljava/lang/Object;

    const-string v7, "Finished performing legacy migration."

    .line 19
    invoke-static {v4, v7, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 20
    :cond_4
    throw v5

    .line 21
    :cond_5
    :goto_1
    iget-boolean v1, v0, LeJ0;->b:Z

    if-nez v1, :cond_12

    .line 22
    iget-object v1, v0, LeJ0;->c:LgJ0;

    if-eqz v1, :cond_11

    new-array v5, v6, [Ljava/lang/Object;

    const-string v7, "Starting to perform multi-instance migration."

    .line 23
    invoke-static {v4, v7, v5}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    invoke-static {}, LgJ0;->d()Ljava/io/File;

    move-result-object v5

    .line 25
    new-instance v7, Ljava/io/File;

    invoke-virtual {v1}, LgJ0;->b()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "New metadata file already exists"

    .line 28
    invoke-static {v4, v8, v7}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 29
    :cond_6
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 30
    invoke-virtual {v8, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 31
    invoke-static {v2, v8}, LZi;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v4, v7, v8}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_2
    const/4 v7, -0x1

    const/4 v8, -0x1

    :goto_3
    const/4 v9, 0x3

    if-ge v8, v9, :cond_10

    if-nez v8, :cond_8

    goto/16 :goto_6

    .line 32
    :cond_8
    new-instance v9, Ljava/io/File;

    .line 33
    sget-object v10, LPI0;->a:Ljava/io/File;

    .line 34
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_9

    goto/16 :goto_6

    .line 36
    :cond_9
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 38
    new-instance v11, Ljava/io/File;

    invoke-static {v8}, LgJ0;->a(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v5, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 39
    invoke-static {v2, v10}, LZi;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    :cond_a
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    if-eqz v10, :cond_e

    .line 41
    array-length v11, v10

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v11, :cond_e

    aget-object v13, v10, v12

    .line 42
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, LtH0;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v14

    if-eqz v14, :cond_d

    const-string v14, "Failed to delete file: "

    if-ne v8, v7, :cond_b

    .line 43
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_d

    .line 44
    invoke-static {v14, v13}, LZi;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    new-array v13, v6, [Ljava/lang/Object;

    invoke-static {v4, v7, v13}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 45
    :cond_b
    new-instance v7, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v7, v5, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 47
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v15

    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v17

    cmp-long v19, v15, v17

    if-lez v19, :cond_c

    .line 48
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_d

    .line 49
    invoke-static {v14, v13}, LZi;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    new-array v13, v6, [Ljava/lang/Object;

    invoke-static {v4, v7, v13}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 50
    :cond_c
    invoke-virtual {v13, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 51
    invoke-static {v2, v13}, LZi;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    new-array v13, v6, [Ljava/lang/Object;

    invoke-static {v4, v7, v13}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    :goto_5
    add-int/lit8 v12, v12, 0x1

    const/4 v7, -0x1

    goto :goto_4

    .line 52
    :cond_e
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, "Failed to delete directory: "

    .line 53
    invoke-static {v7, v9}, LZi;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v4, v7, v9}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    :goto_6
    add-int/lit8 v8, v8, 0x1

    const/4 v7, -0x1

    goto/16 :goto_3

    .line 54
    :cond_10
    iget-object v1, v1, LgJ0;->a:Landroid/content/SharedPreferences;

    const-string v2, "org.chromium.chrome.browser.tabmodel.TabPersistentStore.HAS_RUN_MULTI_INSTANCE_FILE_MIGRATION"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, LZi;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "Finished performing multi-instance migration."

    .line 55
    invoke-static {v4, v2, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    goto :goto_7

    .line 56
    :cond_11
    throw v5

    :cond_12
    :goto_7
    return-object v5
.end method
