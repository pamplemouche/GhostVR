.class public final Ldt;
.super LZs;
.source "PG"


# instance fields
.field public final a:Lrb;

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lrb;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LZs;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldt;->b:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Ldt;->a:Lrb;

    return-void
.end method
