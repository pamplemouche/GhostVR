.class public abstract synthetic LDO;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I

.field public static final synthetic c:[I

.field public static final synthetic d:[I

.field public static final synthetic e:[I

.field public static final synthetic f:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    invoke-static {}, LbP;->values()[LbP;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LDO;->f:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, LbP;->x:LbP;

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v3, LDO;->f:[I

    sget-object v4, LbP;->y:LbP;

    aput v0, v3, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, LDO;->f:[I

    sget-object v5, LbP;->z:LbP;

    aput v3, v4, v0
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 2
    :catch_2
    invoke-static {}, LXO;->values()[LXO;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, LDO;->e:[I

    :try_start_3
    sget-object v5, LXO;->x:LXO;

    aput v2, v4, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v4, LDO;->e:[I

    sget-object v5, LXO;->y:LXO;

    aput v0, v4, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, LDO;->e:[I

    sget-object v5, LXO;->z:LXO;

    aput v3, v4, v0
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 3
    :catch_5
    invoke-static {}, LEO;->values()[LEO;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, LDO;->d:[I

    :try_start_6
    sget-object v5, LEO;->x:LEO;

    aput v2, v4, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, LDO;->d:[I

    sget-object v5, LEO;->y:LEO;

    aput v0, v4, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v4, LDO;->d:[I

    sget-object v5, LEO;->z:LEO;

    aput v3, v4, v0
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 4
    :catch_8
    invoke-static {}, LGO;->values()[LGO;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, LDO;->c:[I

    :try_start_9
    sget-object v5, LGO;->x:LGO;

    aput v2, v4, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v4, LDO;->c:[I

    sget-object v5, LGO;->y:LGO;

    aput v0, v4, v2
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v4, LDO;->c:[I

    sget-object v5, LGO;->z:LGO;

    aput v3, v4, v0
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 5
    :catch_b
    invoke-static {}, LRF;->values()[LRF;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, LDO;->b:[I

    const/4 v5, 0x4

    :try_start_c
    sget-object v6, LRF;->A:LRF;

    aput v2, v4, v5
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v4, LDO;->b:[I

    sget-object v6, LRF;->w:LRF;

    aput v0, v4, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v4, LDO;->b:[I

    sget-object v6, LRF;->z:LRF;

    aput v3, v4, v3
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    const/4 v4, 0x5

    :try_start_f
    sget-object v6, LDO;->b:[I

    sget-object v7, LRF;->B:LRF;

    aput v5, v6, v4
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v5, LDO;->b:[I

    sget-object v6, LRF;->x:LRF;

    aput v4, v5, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    const/4 v4, 0x6

    :try_start_11
    sget-object v5, LDO;->b:[I

    sget-object v6, LRF;->y:LRF;

    aput v4, v5, v0
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    const/4 v5, 0x7

    :try_start_12
    sget-object v6, LDO;->b:[I

    sget-object v7, LRF;->C:LRF;

    aput v5, v6, v4
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v4, LDO;->b:[I

    sget-object v6, LRF;->D:LRF;

    const/16 v6, 0x8

    aput v6, v4, v5
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    .line 6
    :catch_13
    invoke-static {}, LRO;->values()[LRO;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, LDO;->a:[I

    :try_start_14
    sget-object v5, LRO;->x:LRO;

    aput v2, v4, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v1, LDO;->a:[I

    sget-object v4, LRO;->y:LRO;

    aput v0, v1, v2
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v1, LDO;->a:[I

    sget-object v2, LRO;->z:LRO;

    aput v3, v1, v0
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    return-void
.end method
