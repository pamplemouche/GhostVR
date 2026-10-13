.class public abstract synthetic LqJ;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    invoke-static {}, LxJ;->values()[LxJ;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LqJ;->b:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, LxJ;->x:LxJ;

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v3, LqJ;->b:[I

    sget-object v4, LxJ;->y:LxJ;

    aput v0, v3, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, LqJ;->b:[I

    sget-object v5, LxJ;->z:LxJ;

    aput v3, v4, v0
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v4, 0x4

    :try_start_3
    sget-object v5, LqJ;->b:[I

    sget-object v6, LxJ;->A:LxJ;

    aput v4, v5, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v5, 0x5

    :try_start_4
    sget-object v6, LqJ;->b:[I

    sget-object v7, LxJ;->B:LxJ;

    aput v5, v6, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v6, 0x6

    :try_start_5
    sget-object v7, LqJ;->b:[I

    sget-object v8, LxJ;->C:LxJ;

    aput v6, v7, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 2
    :catch_5
    invoke-static {}, LRF;->values()[LRF;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, LqJ;->a:[I

    :try_start_6
    sget-object v8, LRF;->A:LRF;

    aput v2, v7, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v7, LqJ;->a:[I

    sget-object v8, LRF;->w:LRF;

    aput v0, v7, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, LqJ;->a:[I

    sget-object v7, LRF;->z:LRF;

    aput v3, v1, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, LqJ;->a:[I

    sget-object v3, LRF;->B:LRF;

    aput v4, v1, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, LqJ;->a:[I

    sget-object v3, LRF;->x:LRF;

    aput v5, v1, v2
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v1, LqJ;->a:[I

    sget-object v2, LRF;->y:LRF;

    aput v6, v1, v0
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    const/4 v0, 0x7

    :try_start_c
    sget-object v1, LqJ;->a:[I

    sget-object v2, LRF;->C:LRF;

    aput v0, v1, v6
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v1, LqJ;->a:[I

    sget-object v2, LRF;->D:LRF;

    const/16 v2, 0x8

    aput v2, v1, v0
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method
