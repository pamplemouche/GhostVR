.class public abstract LGA0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "prefetch_on_wifi"

    const-string v1, "always_prefetch"

    const-string v2, "never_prefetch"

    .line 1
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, LGA0;->a:[Ljava/lang/String;

    return-void
.end method
