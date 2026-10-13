.class public abstract LpD;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/Random;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, LpD;->a:Ljava/util/Random;

    return-void
.end method

.method public static a(LeD;)LBD;
    .locals 27

    move-object/from16 v0, p0

    :try_start_0
    const-string v1, "SHA-1"

    .line 1
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v2, v0, LEC;->C:LaE;

    .line 3
    iget v3, v2, LaE;->d:I

    .line 4
    iget-object v2, v2, LaE;->e:LPE;

    .line 5
    iget-wide v4, v0, LeD;->W:J

    .line 6
    iget-object v6, v0, LEC;->B:LbE;

    .line 7
    new-instance v7, LzD;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v7, v3, v2, v4, v6}, LzD;-><init>(Ljava/lang/Integer;LPE;Ljava/lang/Long;LbE;)V

    .line 8
    sget-object v2, LjD;->a:LDE;

    .line 9
    iget-object v3, v0, LEC;->x:LdC;

    invoke-interface {v3}, LdC;->b()Z

    move-result v3

    const-string v4, "Not running on internal thread"

    invoke-static {v3, v4}, LWE;->a(ZLjava/lang/Object;)V

    .line 10
    iget-object v3, v0, LEC;->G:LPC;

    .line 11
    iget-object v3, v3, LPC;->a:Ljava/lang/Integer;

    .line 12
    new-instance v9, LYD;

    invoke-direct {v9, v3}, LYD;-><init>(Ljava/lang/Integer;)V

    .line 13
    iget-object v10, v0, LEC;->J:LPE;

    .line 14
    iget-object v11, v0, LEC;->K:LPE;

    .line 15
    iget-boolean v3, v0, LEC;->L:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 16
    iget-wide v3, v0, LEC;->O:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 17
    iget-boolean v3, v0, LEC;->M:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 18
    iget-object v3, v0, LEC;->E:LLC;

    .line 19
    iget v4, v3, LLC;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, v3, LLC;->h:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v6, v1

    move-object/from16 v24, v2

    iget-wide v1, v3, LLC;->i:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, v3, LLC;->f:LHC;

    if-eqz v2, :cond_9

    .line 20
    new-instance v8, Ljava/util/ArrayList;

    iget-object v15, v2, LHC;->c:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v15

    invoke-direct {v8, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    new-instance v15, Ljava/util/ArrayList;

    iget-object v3, v2, LHC;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    iget-object v3, v2, LHC;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    move-object/from16 v25, v6

    if-eqz v16, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 23
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 24
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, LmE;

    move-object/from16 v16, v3

    .line 25
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v26, v7

    iget-object v7, v2, LHC;->c:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v7, 0x1

    if-eq v3, v7, :cond_1

    const/4 v7, 0x2

    if-ne v3, v7, :cond_0

    .line 27
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_1
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move-object/from16 v3, v16

    move-object/from16 v6, v25

    move-object/from16 v7, v26

    goto :goto_0

    :cond_2
    move-object/from16 v26, v7

    .line 30
    iget-object v3, v2, LHC;->d:Ljava/util/Set;

    iget-object v6, v2, LHC;->e:Ljava/util/Set;

    iget-object v7, v2, LHC;->f:LjE;

    iget-object v2, v2, LHC;->g:LhE;

    move-object/from16 v22, v14

    .line 31
    new-instance v14, LFE;

    move-object/from16 v17, v15

    move-object v15, v14

    move-object/from16 v16, v8

    move-object/from16 v18, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v2

    invoke-direct/range {v15 .. v21}, LFE;-><init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;LjE;LhE;)V

    .line 32
    new-instance v15, LHE;

    invoke-direct {v15, v4, v5, v1, v14}, LHE;-><init>(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;LFE;)V

    .line 33
    iget-object v1, v0, LEC;->D:LOC;

    if-eqz v1, :cond_8

    .line 34
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, LOC;->a:LtC;

    .line 35
    check-cast v3, LQC;

    .line 36
    iget-object v3, v3, LQC;->w:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 37
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v1, LOC;->d:Ljava/util/Map;

    .line 39
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    iget-object v4, v1, LOC;->d:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LmE;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v6, v5}, LsE;->a(LmE;I)LsE;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 42
    :cond_3
    iget-object v1, v1, LOC;->c:LwE;

    .line 43
    new-instance v4, LJE;

    invoke-direct {v4, v2, v1, v3}, LJE;-><init>(Ljava/util/Collection;LwE;Ljava/util/Collection;)V

    .line 44
    iget-object v1, v0, LEC;->P:LwC;

    invoke-virtual {v1}, LNC;->a()LIE;

    move-result-object v17

    .line 45
    iget-object v1, v0, LEC;->Q:LCC;

    invoke-virtual {v1}, LNC;->a()LIE;

    move-result-object v18

    .line 46
    iget-object v1, v0, LEC;->R:LBC;

    invoke-virtual {v1}, LNC;->a()LIE;

    move-result-object v19

    .line 47
    iget-object v1, v0, LEC;->S:LyC;

    invoke-virtual {v1}, LNC;->a()LIE;

    move-result-object v20

    .line 48
    iget-object v1, v0, LEC;->T:LxC;

    invoke-virtual {v1}, LNC;->a()LIE;

    move-result-object v21

    .line 49
    iget-object v1, v0, LEC;->R:LBC;

    .line 50
    iget-object v1, v1, LBC;->j:LLE;

    .line 51
    iget-object v1, v1, LLE;->a:Ljava/lang/Object;

    .line 52
    check-cast v1, LXD;

    .line 53
    iget-object v2, v0, LEC;->H:LWC;

    if-eqz v2, :cond_7

    .line 54
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-virtual {v2, v3}, LWC;->a(Ljava/util/List;)V

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LoC;

    .line 58
    iget-object v6, v5, LoC;->a:Ljava/lang/Object;

    .line 59
    check-cast v6, Ljava/lang/String;

    .line 60
    iget-object v5, v5, LoC;->b:Ljava/lang/Object;

    .line 61
    check-cast v5, Ljava/lang/Integer;

    .line 62
    new-instance v7, LnE;

    invoke-direct {v7, v6, v5}, LnE;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 64
    :cond_4
    new-instance v3, LKE;

    invoke-direct {v3, v2}, LKE;-><init>(Ljava/util/Collection;)V

    .line 65
    new-instance v2, LGE;

    move-object v8, v2

    move-object/from16 v14, v22

    move-object/from16 v16, v4

    move-object/from16 v22, v1

    move-object/from16 v23, v3

    .line 66
    invoke-direct/range {v8 .. v23}, LGE;-><init>(LYD;LPE;LPE;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;LHE;LJE;LIE;LIE;LIE;LIE;LIE;LXD;LKE;)V

    .line 67
    iget-object v0, v0, LEC;->w:LfC;

    .line 68
    check-cast v0, LsC;

    .line 69
    iget-object v0, v0, LsC;->a:LdC;

    .line 70
    check-cast v0, LcD;

    if-eqz v0, :cond_6

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, v0, LcD;->b:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    iget-object v0, v0, LcD;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 73
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 74
    new-instance v3, LSD;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v4, v5}, LSD;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    .line 75
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 76
    :cond_5
    new-instance v0, LAD;

    move-object/from16 v4, v24

    move-object/from16 v3, v26

    invoke-direct {v0, v4, v2, v3, v1}, LAD;-><init>(LDE;LGE;LzD;Ljava/util/Collection;)V

    .line 77
    invoke-virtual {v0}, LAD;->c()LiH;

    move-result-object v1

    invoke-static {v1}, LZG;->a(LZG;)[B

    move-result-object v1

    const/4 v2, 0x1

    .line 78
    invoke-static {v2}, LWE;->b(Z)V

    move-object/from16 v3, v25

    .line 79
    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 80
    new-instance v1, LPE;

    .line 81
    invoke-static {v2}, LWE;->b(Z)V

    .line 82
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 83
    invoke-direct {v1, v2}, LPE;-><init>([B)V

    .line 84
    new-instance v2, LBD;

    invoke-direct {v2, v0, v1}, LBD;-><init>(LAD;LPE;)V

    return-object v2

    :cond_6
    const/4 v0, 0x0

    .line 85
    throw v0

    :cond_7
    const/4 v0, 0x0

    .line 86
    throw v0

    :cond_8
    const/4 v0, 0x0

    .line 87
    throw v0

    :cond_9
    const/4 v0, 0x0

    .line 88
    throw v0

    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Landroid/content/Context;LfC;)LeD;
    .locals 14

    .line 102
    move-object v0, p1

    check-cast v0, LsC;

    .line 103
    iget-object v0, v0, LsC;->b:LZB;

    const-string v1, "Could not read Ticl state: %s"

    const-string v2, "android_ticl_service_state.bin"

    const-string v3, "Exception closing Ticl state file: %s"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 104
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch LYE; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    :try_start_1
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 106
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    const-wide/32 v11, 0x19000

    cmp-long v13, v9, v11

    if-lez v13, :cond_0

    const-string v8, "Ignoring too-large Ticl state file with size %s > %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    .line 107
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v11, v4

    const v9, 0x19000

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v11, v5
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch LYE; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    move-object v9, v0

    check-cast v9, LgC;

    :try_start_2
    invoke-virtual {v9, v8, v11}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    long-to-int v10, v9

    .line 109
    new-array v9, v10, [B

    .line 110
    invoke-virtual {v8, v9}, Ljava/io/DataInputStream;->readFully([B)V

    .line 111
    invoke-static {v9}, LBD;->a([B)LBD;

    move-result-object v8

    .line 112
    invoke-static {v8, v0}, LpD;->a(LBD;LZB;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 113
    iget-object v8, v8, LBD;->c:LAD;

    const-string v9, "validator ensures that state is set"

    .line 114
    invoke-static {v8, v9}, LWE;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch LYE; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v4

    .line 116
    check-cast v0, LgC;

    invoke-virtual {v0, v3, v2}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    :try_start_4
    const-string v9, "Android Ticl state failed digest check: %s"

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v8, v10, v4
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catch LYE; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    move-object v8, v0

    check-cast v8, LgC;

    :try_start_5
    invoke-virtual {v8, v9, v10}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch LYE; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 118
    :goto_0
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v4

    .line 119
    check-cast v0, LgC;

    invoke-virtual {v0, v3, v2}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v6, v7

    goto/16 :goto_5

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_2

    :catchall_1
    move-exception p0

    goto/16 :goto_5

    :catch_4
    move-exception v2

    move-object v7, v6

    :goto_1
    :try_start_7
    new-array v8, v5, [Ljava/lang/Object;

    aput-object v2, v8, v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 120
    move-object v2, v0

    check-cast v2, LgC;

    :try_start_8
    invoke-virtual {v2, v1, v8}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v7, :cond_2

    .line 121
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_3

    :catch_5
    move-exception v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v4

    .line 122
    invoke-virtual {v2, v3, v1}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catch_6
    move-exception v2

    move-object v7, v6

    :goto_2
    :try_start_a
    new-array v8, v5, [Ljava/lang/Object;

    aput-object v2, v8, v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 123
    move-object v2, v0

    check-cast v2, LgC;

    :try_start_b
    invoke-virtual {v2, v1, v8}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v7, :cond_2

    .line 124
    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_3

    :catch_7
    move-exception v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v4

    .line 125
    invoke-virtual {v2, v3, v1}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catch_8
    move-object v7, v6

    :catch_9
    :try_start_d
    const-string v1, "Ticl state file does not exist: %s"

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v2, v8, v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 126
    move-object v2, v0

    check-cast v2, LgC;

    :try_start_e
    invoke-virtual {v2, v1, v8}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v7, :cond_2

    .line 127
    :try_start_f
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    goto :goto_3

    :catch_a
    move-exception v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v4

    .line 128
    invoke-virtual {v2, v3, v1}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_3
    move-object v8, v6

    :goto_4
    if-nez v8, :cond_3

    return-object v6

    .line 129
    :cond_3
    new-instance v0, LeD;

    sget-object v1, LpD;->a:Ljava/util/Random;

    invoke-direct {v0, p0, p1, v1, v8}, LeD;-><init>(Landroid/content/Context;LfC;Ljava/util/Random;LAD;)V

    .line 130
    iget-object p0, v8, LAD;->f:Ljava/util/List;

    .line 131
    invoke-static {p1, v0, p0}, LpD;->a(LfC;LeD;Ljava/util/List;)V

    .line 132
    check-cast p1, LsC;

    .line 133
    iget-object p0, p1, LsC;->a:LdC;

    .line 134
    check-cast p0, LcD;

    .line 135
    invoke-virtual {p0}, LcD;->d()V

    return-object v0

    :goto_5
    if-eqz v6, :cond_4

    .line 136
    :try_start_10
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    goto :goto_6

    :catch_b
    move-exception p1

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 137
    check-cast v0, LgC;

    invoke-virtual {v0, v3, v1}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :cond_4
    :goto_6
    throw p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "android_ticl_service_state.bin"

    .line 165
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;LZB;LeD;)V
    .locals 6

    const-string v0, "Could not write Ticl state: %s"

    const-string v1, "Exception closing Ticl state file: %s"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 150
    :try_start_0
    invoke-static {p2}, LpD;->a(LeD;)LBD;

    move-result-object p2

    const-string v5, "android_ticl_service_state.bin"

    .line 151
    invoke-virtual {p0, v5, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 152
    invoke-virtual {p2}, LBD;->c()[B

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 153
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p0, p2, v3

    .line 155
    check-cast p1, LgC;

    invoke-virtual {p1, v1, p2}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_1

    :goto_0
    :try_start_2
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p0, p2, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    move-object p0, p1

    check-cast p0, LgC;

    :try_start_3
    invoke-virtual {p0, v0, p2}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_0

    .line 157
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v3

    .line 158
    invoke-virtual {p0, v1, p2}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    :try_start_5
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p0, p2, v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 159
    move-object p0, p1

    check-cast p0, LgC;

    :try_start_6
    invoke-virtual {p0, v0, p2}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_0

    .line 160
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    :catch_4
    move-exception p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v3

    .line 161
    invoke-virtual {p0, v1, p2}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_2
    return-void

    :goto_3
    if-eqz v4, :cond_1

    .line 162
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    :catch_5
    move-exception p2

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 163
    check-cast p1, LgC;

    invoke-virtual {p1, v1, v0}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :cond_1
    :goto_4
    throw p0
.end method

.method public static a(LfC;LeD;Ljava/util/List;)V
    .locals 3

    .line 139
    check-cast p0, LsC;

    .line 140
    iget-object p0, p0, LsC;->a:LdC;

    .line 141
    check-cast p0, LcD;

    .line 142
    iget-wide v0, p1, LeD;->W:J

    .line 143
    iput-wide v0, p0, LcD;->f:J

    .line 144
    iget-object p1, p0, LcD;->b:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->clear()V

    .line 145
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LSD;

    .line 146
    iget-wide v0, p2, LSD;->d:J

    .line 147
    iget-object v2, p0, LcD;->b:Ljava/util/TreeMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 148
    iget-object p2, p2, LSD;->c:Ljava/lang/String;

    .line 149
    invoke-virtual {v2, v0, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(LBD;LZB;)Z
    .locals 4

    :try_start_0
    const-string v0, "SHA-1"

    .line 90
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    iget-object v1, p0, LBD;->c:LAD;

    .line 92
    invoke-virtual {v1}, LAD;->c()LiH;

    move-result-object v1

    invoke-static {v1}, LZG;->a(LZG;)[B

    move-result-object v1

    const/4 v2, 0x1

    .line 93
    invoke-static {v2}, LWE;->b(Z)V

    .line 94
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 95
    invoke-static {v2}, LWE;->b(Z)V

    .line 96
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 97
    new-instance v1, LPE;

    invoke-direct {v1, v0}, LPE;-><init>([B)V

    .line 98
    iget-object v3, p0, LBD;->d:LPE;

    .line 99
    invoke-static {v1, v3}, LcF;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    aput-object p0, v1, v2

    .line 100
    check-cast p1, LgC;

    const-string p0, "Android TICL state digest mismatch; computed %s for %s"

    invoke-virtual {p1, p0, v1}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    return v2

    :catch_0
    move-exception p0

    .line 101
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
