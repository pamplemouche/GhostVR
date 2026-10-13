.class public abstract LHk0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LHk0;->a:Ljava/util/List;

    return-void
.end method

.method public static a(ZZLjava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    const-string p2, ""

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, LJ/N;->M7xe7yjp(ZZLjava/lang/String;)V

    return-void
.end method
