.class public abstract LSE;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(LbF;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, LbF;

    invoke-direct {v0}, LbF;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, LSE;->a(LbF;)V

    .line 3
    invoke-virtual {v0}, LbF;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
