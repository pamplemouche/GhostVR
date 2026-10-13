.class public LMO0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LLO0;


# instance fields
.field public final a:LKO0;

.field public final b:LRO0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LKO0;

    invoke-direct {v0}, LKO0;-><init>()V

    iput-object v0, p0, LMO0;->a:LKO0;

    .line 3
    new-instance v0, LRO0;

    invoke-direct {v0}, LRO0;-><init>()V

    iput-object v0, p0, LMO0;->b:LRO0;

    return-void
.end method
