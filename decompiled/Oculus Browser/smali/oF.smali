.class public abstract LoF;
.super LrF;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LrF;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, LjF;

    invoke-direct {v0, p0}, LjF;-><init>(LrF;)V

    return-object v0
.end method
