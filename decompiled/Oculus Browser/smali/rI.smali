.class public abstract synthetic LrI;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I

.field public static final synthetic c:[I

.field public static final synthetic d:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    invoke-static {}, LMI;->values()[LMI;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LrI;->d:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, LMI;->x:LMI;

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v3, LrI;->d:[I

    sget-object v4, LMI;->y:LMI;

    aput v0, v3, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, LrI;->d:[I

    sget-object v5, LMI;->z:LMI;

    aput v3, v4, v0
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v4, 0x4

    :try_start_3
    sget-object v5, LrI;->d:[I

    sget-object v6, LMI;->A:LMI;

    aput v4, v5, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v5, 0x5

    :try_start_4
    sget-object v6, LrI;->d:[I

    sget-object v7, LMI;->B:LMI;

    aput v5, v6, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v6, 0x6

    :try_start_5
    sget-object v7, LrI;->d:[I

    sget-object v8, LMI;->C:LMI;

    aput v6, v7, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v7, 0x7

    :try_start_6
    sget-object v8, LrI;->d:[I

    sget-object v9, LMI;->D:LMI;

    aput v7, v8, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 2
    :catch_6
    invoke-static {}, LWI;->values()[LWI;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, LrI;->c:[I

    :try_start_7
    sget-object v9, LWI;->x:LWI;

    aput v2, v8, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v8, LrI;->c:[I

    sget-object v9, LWI;->y:LWI;

    aput v0, v8, v2
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 3
    :catch_8
    invoke-static {}, LRF;->values()[LRF;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, LrI;->b:[I

    :try_start_9
    sget-object v9, LRF;->A:LRF;

    aput v2, v8, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v8, LrI;->b:[I

    sget-object v9, LRF;->w:LRF;

    aput v0, v8, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v8, LrI;->b:[I

    sget-object v9, LRF;->z:LRF;

    aput v3, v8, v3
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v8, LrI;->b:[I

    sget-object v9, LRF;->B:LRF;

    aput v4, v8, v5
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v8, LrI;->b:[I

    sget-object v9, LRF;->x:LRF;

    aput v5, v8, v2
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v8, LrI;->b:[I

    sget-object v9, LRF;->y:LRF;

    aput v6, v8, v0
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v8, LrI;->b:[I

    sget-object v9, LRF;->C:LRF;

    aput v7, v8, v6
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v8, LrI;->b:[I

    sget-object v9, LRF;->D:LRF;

    const/16 v9, 0x8

    aput v9, v8, v7
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    .line 4
    :catch_10
    invoke-static {}, LCI;->values()[LCI;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, LrI;->a:[I

    :try_start_11
    sget-object v8, LCI;->x:LCI;

    aput v2, v7, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v1, LrI;->a:[I

    sget-object v7, LCI;->y:LCI;

    aput v0, v1, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v1, LrI;->a:[I

    sget-object v2, LCI;->z:LCI;

    aput v3, v1, v0
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, LrI;->a:[I

    sget-object v1, LCI;->A:LCI;

    aput v4, v0, v3
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, LrI;->a:[I

    sget-object v1, LCI;->B:LCI;

    aput v5, v0, v4
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, LrI;->a:[I

    sget-object v1, LCI;->C:LCI;

    aput v6, v0, v5
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    return-void
.end method
