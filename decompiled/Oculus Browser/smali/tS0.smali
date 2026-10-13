.class public abstract synthetic LtS0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    invoke-static {}, LRF;->values()[LRF;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LtS0;->b:[I

    const/4 v1, 0x1

    const/4 v2, 0x4

    :try_start_0
    sget-object v3, LRF;->A:LRF;

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    const/4 v3, 0x2

    :try_start_1
    sget-object v4, LtS0;->b:[I

    sget-object v5, LRF;->w:LRF;

    aput v3, v4, v0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v4, 0x3

    :try_start_2
    sget-object v5, LtS0;->b:[I

    sget-object v6, LRF;->z:LRF;

    aput v4, v5, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v5, 0x5

    :try_start_3
    sget-object v6, LtS0;->b:[I

    sget-object v7, LRF;->B:LRF;

    aput v2, v6, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v6, LtS0;->b:[I

    sget-object v7, LRF;->x:LRF;

    aput v5, v6, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v6, 0x6

    :try_start_5
    sget-object v7, LtS0;->b:[I

    sget-object v8, LRF;->y:LRF;

    aput v6, v7, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v7, 0x7

    :try_start_6
    sget-object v8, LtS0;->b:[I

    sget-object v9, LRF;->C:LRF;

    aput v7, v8, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v8, LtS0;->b:[I

    sget-object v9, LRF;->D:LRF;

    const/16 v9, 0x8

    aput v9, v8, v7
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 2
    :catch_7
    invoke-static {}, LxS0;->values()[LxS0;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, LtS0;->a:[I

    :try_start_8
    sget-object v8, LxS0;->x:LxS0;

    aput v1, v7, v0
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, LtS0;->a:[I

    sget-object v7, LxS0;->y:LxS0;

    aput v3, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, LtS0;->a:[I

    sget-object v1, LxS0;->z:LxS0;

    aput v4, v0, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, LtS0;->a:[I

    sget-object v1, LxS0;->A:LxS0;

    aput v2, v0, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, LtS0;->a:[I

    sget-object v1, LxS0;->B:LxS0;

    aput v5, v0, v2
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, LtS0;->a:[I

    sget-object v1, LxS0;->C:LxS0;

    aput v6, v0, v5
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method
