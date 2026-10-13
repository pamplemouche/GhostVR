.class public LJJ0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LWT;

.field public final b:LxI0;

.field public c:LpI0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, LJJ0;->a:LWT;

    .line 3
    new-instance v0, LHJ0;

    invoke-direct {v0, p0}, LHJ0;-><init>(LJJ0;)V

    iput-object v0, p0, LJJ0;->b:LxI0;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, LJJ0;->c:LpI0;

    if-eqz v0, :cond_0

    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->f()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
