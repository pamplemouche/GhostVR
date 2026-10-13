.class public LN9;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LO9;


# direct methods
.method public constructor <init>(LO9;)V
    .locals 0

    .line 1
    iput-object p1, p0, LN9;->w:LO9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LN9;->w:LO9;

    iget-object v0, v0, LO9;->x:LQ9;

    iget-object v1, v0, LQ9;->h0:Lqb;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, LQ9;->h0:Lqb;

    .line 3
    iget-boolean v1, v0, LQ9;->x0:Z

    if-eqz v1, :cond_0

    .line 4
    iget-boolean v1, v0, LQ9;->y0:Z

    invoke-virtual {v0, v1}, LQ9;->d(Z)V

    :cond_0
    return-void
.end method
