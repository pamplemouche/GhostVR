.class public final Lmb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LNb;


# instance fields
.field public final a:LOb;

.field public b:Z

.field public final synthetic c:Lnb;


# direct methods
.method public constructor <init>(Lnb;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmb;->c:Lnb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lnb;->a:Landroid/content/Context;

    .line 3
    new-instance v0, LLb;

    invoke-direct {v0, p1, p2}, LLb;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 4
    iput-object v0, p0, Lmb;->a:LOb;

    .line 5
    iput-object p0, v0, LOb;->b:LNb;

    .line 6
    iget-object p1, p0, Lmb;->c:Lnb;

    iget-object p1, p1, Lnb;->g:LMb;

    invoke-virtual {v0, p1}, LOb;->a(LMb;)V

    return-void
.end method
