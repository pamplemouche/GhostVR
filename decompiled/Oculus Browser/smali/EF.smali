.class public abstract synthetic LEF;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, LKG;->values()[LKG;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LEF;->a:[I

    :try_start_0
    sget-object v1, LKG;->E:LKG;

    const/16 v1, 0x8

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, LEF;->a:[I

    sget-object v1, LKG;->D:LKG;

    const/4 v1, 0x7

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
