.class public final synthetic Lxy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LJx;


# instance fields
.field public final a:LBy;

.field public final b:LJx;


# direct methods
.method public constructor <init>(LBy;LJx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxy;->a:LBy;

    iput-object p2, p0, Lxy;->b:LJx;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lxy;->a:LBy;

    iget-object v1, p0, Lxy;->b:LJx;

    check-cast p1, Lsx;

    if-eqz v0, :cond_1

    .line 1
    new-instance v2, Lyy;

    invoke-direct {v2, p1, v1}, Lyy;-><init>(Lsx;LJx;)V

    .line 2
    iget-object p1, v0, LBy;->d:LYw;

    invoke-virtual {p1}, LYw;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v2}, Lyy;->run()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, v0, LBy;->c:Lxx;

    const-string v0, "FeedKnownContentImpl getKnownContentAccept"

    invoke-virtual {p1, v0, v2}, Lxx;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 5
    throw p1
.end method
