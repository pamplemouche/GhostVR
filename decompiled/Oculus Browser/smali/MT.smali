.class public final synthetic LMT;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LNU;


# instance fields
.field public final a:LNT;


# direct methods
.method public constructor <init>(LNT;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LMT;->a:LNT;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, LMT;->a:LNT;

    check-cast v0, LOT;

    if-eqz v0, :cond_0

    .line 1
    invoke-static {p1}, LJ/N;->MZJzyjAa(I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
