.class public abstract LrL0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lfe1;

.field public static final b:Lce1;

.field public static final c:[LUd1;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lfe1;

    const-string v1, "formatted_url"

    invoke-direct {v0, v1}, Lfe1;-><init>(Ljava/lang/String;)V

    sput-object v0, LrL0;->a:Lfe1;

    .line 2
    new-instance v0, Lce1;

    const-string v1, "origin_secure"

    invoke-direct {v0, v1}, Lce1;-><init>(Ljava/lang/String;)V

    sput-object v0, LrL0;->b:Lce1;

    const/4 v1, 0x2

    new-array v1, v1, [LUd1;

    .line 3
    sget-object v2, LrL0;->a:Lfe1;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, LrL0;->c:[LUd1;

    return-void
.end method
