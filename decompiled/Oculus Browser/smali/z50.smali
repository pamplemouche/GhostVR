.class public abstract Lz50;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ly50;

    const/4 v2, 0x2

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4
    invoke-direct {v1, v2, v2}, Ly50;-><init>(II)V

    const/4 v4, 0x1

    .line 5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 7
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Ly50;

    const/16 v6, 0x8

    .line 9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 10
    invoke-direct {v1, v2, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Ly50;

    const/4 v6, 0x3

    .line 12
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 13
    invoke-direct {v1, v2, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v1, Ly50;

    invoke-direct {v1, v6, v2}, Ly50;-><init>(II)V

    const/4 v9, 0x4

    .line 15
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 16
    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v1, Ly50;

    const/4 v11, 0x7

    .line 18
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 19
    invoke-direct {v1, v6, v11}, Ly50;-><init>(II)V

    const/4 v11, 0x5

    .line 20
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 21
    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v1, Ly50;

    const/16 v13, 0xe

    invoke-direct {v1, v6, v13}, Ly50;-><init>(II)V

    const/4 v14, 0x6

    .line 23
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 24
    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v1, Ly50;

    invoke-direct {v1, v9, v2}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v1, Ly50;

    invoke-direct {v1, v9, v13}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v1, Ly50;

    const/16 v2, 0xb

    invoke-direct {v1, v9, v2}, Ly50;-><init>(II)V

    const/16 v2, 0x9

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v1, Ly50;

    const/16 v13, 0xa

    .line 31
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 32
    invoke-direct {v1, v9, v13}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    new-instance v1, Ly50;

    const/4 v9, 0x0

    .line 36
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v16, v13

    .line 37
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 38
    invoke-direct {v1, v9, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v1, Ly50;

    const/4 v6, 0x4

    invoke-direct {v1, v9, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v1, Ly50;

    const/4 v6, 0x1

    const/4 v9, 0x3

    invoke-direct {v1, v6, v9}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v1, Ly50;

    const/4 v9, 0x4

    invoke-direct {v1, v6, v9}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v1, Ly50;

    const/4 v6, 0x3

    const/4 v9, 0x2

    invoke-direct {v1, v9, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v1, Ly50;

    const/4 v6, 0x4

    invoke-direct {v1, v9, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v1, Ly50;

    const/16 v6, 0x9

    const/4 v9, 0x3

    invoke-direct {v1, v9, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v1, Ly50;

    const/16 v6, 0xd

    invoke-direct {v1, v9, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v1, Ly50;

    const/16 v6, 0xe

    invoke-direct {v1, v9, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v1, Ly50;

    const/4 v6, 0x4

    const/16 v9, 0xd

    invoke-direct {v1, v6, v9}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v1, Ly50;

    const/16 v9, 0xe

    invoke-direct {v1, v6, v9}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    new-instance v1, Ly50;

    const/16 v6, 0x9

    const/4 v9, 0x2

    invoke-direct {v1, v9, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v1, Ly50;

    const/16 v6, 0xd

    invoke-direct {v1, v9, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v1, Ly50;

    const/16 v6, 0xe

    invoke-direct {v1, v9, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v1, Ly50;

    const/4 v6, 0x4

    const/16 v9, 0xd

    invoke-direct {v1, v6, v9}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v1, Ly50;

    const/16 v9, 0xe

    invoke-direct {v1, v6, v9}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    new-instance v1, Ly50;

    const/16 v6, 0xd

    const/4 v9, 0x2

    invoke-direct {v1, v9, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v1, Ly50;

    const/16 v6, 0xe

    invoke-direct {v1, v9, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v1, Ly50;

    const/4 v6, 0x3

    const/16 v9, 0xd

    invoke-direct {v1, v6, v9}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v1, Ly50;

    const/16 v9, 0xe

    invoke-direct {v1, v6, v9}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v1, Ly50;

    const/16 v9, 0xa

    invoke-direct {v1, v6, v9}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    new-instance v1, Ly50;

    const/4 v9, 0x2

    invoke-direct {v1, v9, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v1, Ly50;

    const/4 v6, 0x4

    invoke-direct {v1, v9, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    new-instance v1, Ly50;

    const/4 v6, 0x1

    invoke-direct {v1, v6, v9}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v1, Ly50;

    const/16 v9, 0x8

    invoke-direct {v1, v6, v9}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v1, Ly50;

    const/4 v9, 0x7

    invoke-direct {v1, v6, v9}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v1, Ly50;

    const/4 v6, 0x3

    const/4 v9, 0x2

    invoke-direct {v1, v9, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v1, Ly50;

    const/4 v6, 0x4

    invoke-direct {v1, v9, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v1, Ly50;

    const/16 v6, 0x9

    const/4 v9, 0x3

    invoke-direct {v1, v9, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v1, Ly50;

    const/16 v6, 0xd

    invoke-direct {v1, v9, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v1, Ly50;

    const/16 v6, 0xe

    invoke-direct {v1, v9, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v1, Ly50;

    const/4 v6, 0x4

    const/16 v9, 0xd

    invoke-direct {v1, v6, v9}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v1, Ly50;

    const/16 v9, 0xe

    invoke-direct {v1, v6, v9}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    new-instance v1, Ly50;

    const/4 v6, 0x1

    const/4 v9, 0x2

    invoke-direct {v1, v6, v9}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v1, Ly50;

    const/4 v15, 0x7

    invoke-direct {v1, v6, v15}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v1, Ly50;

    const/16 v15, 0xe

    invoke-direct {v1, v6, v15}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v1, Ly50;

    const/16 v6, 0x9

    invoke-direct {v1, v9, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v1, Ly50;

    const/16 v6, 0xd

    invoke-direct {v1, v9, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v1, Ly50;

    invoke-direct {v1, v9, v15}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v1, Ly50;

    const/4 v9, 0x4

    invoke-direct {v1, v9, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v1, Ly50;

    invoke-direct {v1, v9, v15}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v1, Ly50;

    const/16 v6, 0xa

    invoke-direct {v1, v9, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    new-instance v1, Ly50;

    const/4 v2, 0x1

    const/4 v6, 0x2

    invoke-direct {v1, v2, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v1, Ly50;

    const/16 v6, 0xe

    invoke-direct {v1, v2, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v1, Ly50;

    const/16 v6, 0xb

    invoke-direct {v1, v2, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v1, Ly50;

    const/16 v6, 0xa

    invoke-direct {v1, v2, v6}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v1, Ly50;

    const/16 v2, 0xd

    const/4 v6, 0x2

    invoke-direct {v1, v6, v2}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v1, Ly50;

    const/16 v9, 0xe

    invoke-direct {v1, v6, v9}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v1, Ly50;

    const/4 v6, 0x3

    invoke-direct {v1, v6, v2}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v1, Ly50;

    invoke-direct {v1, v6, v9}, Ly50;-><init>(II)V

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v5, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v13, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v5, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v13, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 108
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v4, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v3, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v2, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    return-void
.end method

.method public static a()V
    .locals 2

    const-string v0, "Search.ContextualSearch.Ranker.Recorded"

    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, LfV;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "Search.ContextualSearch.Ranker.Suppressed"

    .line 6
    invoke-static {v0, p0}, LfV;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(II)V
    .locals 1

    const-string v0, "Search.ContextualSearchPrevious28DayImpressions"

    .line 2
    invoke-static {v0, p0}, LfV;->c(Ljava/lang/String;I)V

    const-string p0, "Search.ContextualSearchPrevious28DayCtr"

    .line 3
    invoke-static {p0, p1}, LfV;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(J)V
    .locals 2

    const-wide/32 v0, 0x5265c00

    .line 4
    div-long/2addr p0, v0

    long-to-int p1, p0

    const-string p0, "Search.ContextualSearch.OutcomesDuration"

    .line 5
    invoke-static {p0, p1}, LfV;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Z)V
    .locals 1

    const-string v0, "Search.ContextualSearchBarOverlap"

    .line 1
    invoke-static {v0, p0}, LfV;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public static b(I)V
    .locals 1

    const-string v0, "Search.ContextualSearchTapsSinceOpenDecided"

    .line 1
    invoke-static {v0, p0}, LfV;->c(Ljava/lang/String;I)V

    return-void
.end method

.method public static b(II)V
    .locals 1

    const-string v0, "Search.ContextualSearchPreviousWeekImpressions"

    .line 3
    invoke-static {v0, p0}, LfV;->c(Ljava/lang/String;I)V

    const-string p0, "Search.ContextualSearchPreviousWeekCtr"

    .line 4
    invoke-static {p0, p1}, LfV;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public static b(Z)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    const/4 v0, 0x3

    const-string v1, "Search.ContextualSearchPreferenceStateChange"

    .line 2
    invoke-static {v1, p0, v0}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public static c(I)V
    .locals 1

    const-string v0, "Search.ContextualSearchTapsSinceOpenUndecided"

    .line 1
    invoke-static {v0, p0}, LfV;->c(Ljava/lang/String;I)V

    return-void
.end method

.method public static c(Z)V
    .locals 1

    const-string v0, "Search.ContextualSearchRecentScrollSuppression"

    .line 2
    invoke-static {v0, p0}, LfV;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public static d(Z)V
    .locals 1

    const-string v0, "Search.ContextualSearchScreenTopSuppressed"

    .line 1
    invoke-static {v0, p0}, LfV;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public static e(Z)V
    .locals 2

    xor-int/lit8 p0, p0, 0x1

    const/4 v0, 0x2

    const-string v1, "Search.ContextualSearchSelectionValid"

    .line 1
    invoke-static {v1, p0, v0}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public static f(Z)V
    .locals 1

    const-string v0, "Search.ContextualSearchSelectionLengthSuppression"

    .line 1
    invoke-static {v0, p0}, LfV;->a(Ljava/lang/String;Z)V

    return-void
.end method
