.class public LAy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lew;


# instance fields
.field public final synthetic a:LBy;


# direct methods
.method public constructor <init>(LBy;)V
    .locals 0

    .line 1
    iput-object p1, p0, LAy;->a:LBy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZJ)V
    .locals 2

    .line 1
    iget-object v0, p0, LAy;->a:LBy;

    new-instance v1, Lzy;

    invoke-direct {v1, p0, p1, p2, p3}, Lzy;-><init>(LAy;ZJ)V

    .line 2
    iget-object p1, v0, LBy;->d:LYw;

    invoke-virtual {p1}, LYw;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v1}, Lzy;->run()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, v0, LBy;->c:Lxx;

    const-string p2, "FeedKnownContentImpl onNewContentReceived"

    invoke-virtual {p1, p2, v1}, Lxx;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
