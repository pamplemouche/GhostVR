.class public LFa;
.super LIa;
.source "PG"


# instance fields
.field public final a:LK0;


# direct methods
.method public constructor <init>(LK0;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, LIa;-><init>(LCa;)V

    .line 2
    iput-object p1, p0, LFa;->a:LK0;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, LFa;->a:LK0;

    invoke-virtual {v0}, LK0;->start()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, LFa;->a:LK0;

    invoke-virtual {v0}, LK0;->stop()V

    return-void
.end method
