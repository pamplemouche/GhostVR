.class public abstract synthetic Laq0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    invoke-static {}, Loq0;->values()[Loq0;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Laq0;->b:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Loq0;->x:Loq0;

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v3, Laq0;->b:[I

    sget-object v4, Loq0;->y:Loq0;

    aput v0, v3, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Laq0;->b:[I

    sget-object v5, Loq0;->z:Loq0;

    aput v3, v4, v0
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 2
    :catch_2
    invoke-static {}, LRF;->values()[LRF;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Laq0;->a:[I

    const/4 v5, 0x4

    :try_start_3
    sget-object v6, LRF;->A:LRF;

    aput v2, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v4, Laq0;->a:[I

    sget-object v6, LRF;->w:LRF;

    aput v0, v4, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Laq0;->a:[I

    sget-object v4, LRF;->z:LRF;

    aput v3, v1, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v1, 0x5

    :try_start_6
    sget-object v3, Laq0;->a:[I

    sget-object v4, LRF;->B:LRF;

    aput v5, v3, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v3, Laq0;->a:[I

    sget-object v4, LRF;->x:LRF;

    aput v1, v3, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/4 v1, 0x6

    :try_start_8
    sget-object v2, Laq0;->a:[I

    sget-object v3, LRF;->y:LRF;

    aput v1, v2, v0
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/4 v0, 0x7

    :try_start_9
    sget-object v2, Laq0;->a:[I

    sget-object v3, LRF;->C:LRF;

    aput v0, v2, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Laq0;->a:[I

    sget-object v2, LRF;->D:LRF;

    const/16 v2, 0x8

    aput v2, v1, v0
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method
