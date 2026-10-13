.class public final LLs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LPs;


# instance fields
.field public final synthetic a:LPs;

.field public final synthetic b:LKs;


# direct methods
.method public constructor <init>(LKs;LPs;)V
    .locals 0

    .line 1
    iput-object p1, p0, LLs;->b:LKs;

    iput-object p2, p0, LLs;->a:LPs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .line 5
    iget-object v0, p0, LLs;->a:LPs;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1, p2}, LPs;->a(J)V

    :cond_0
    return-void
.end method

.method public final a(JILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, LLs;->b:LKs;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, LKs;->g:Ljava/lang/Long;

    .line 3
    iget-object v0, p0, LLs;->a:LPs;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2, p3, p4}, LPs;->a(JILjava/lang/Object;)V

    :cond_0
    return-void
.end method
