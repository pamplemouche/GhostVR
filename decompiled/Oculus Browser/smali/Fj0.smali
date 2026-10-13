.class public LFj0;
.super Lgk;
.source "PG"


# instance fields
.field public final synthetic a:LGj0;


# direct methods
.method public synthetic constructor <init>(LGj0;LCj0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LFj0;->a:LGj0;

    invoke-direct {p0}, Lgk;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, LFj0;->a:LGj0;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, LBj0;->a:LEj0;

    invoke-virtual {v0, v1}, LGj0;->a(LEj0;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, LFj0;->a:LGj0;

    invoke-virtual {v0}, LGj0;->j()V

    return-void
.end method
