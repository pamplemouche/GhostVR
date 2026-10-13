.class public abstract Lvm0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "sites"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvm0;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lsm0;
    .locals 1

    .line 1
    sget-object v0, Ltm0;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsm0;

    return-object p0
.end method
