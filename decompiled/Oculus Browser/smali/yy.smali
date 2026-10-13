.class public final synthetic Lyy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lsx;

.field public final x:LJx;


# direct methods
.method public constructor <init>(Lsx;LJx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyy;->w:Lsx;

    iput-object p2, p0, Lyy;->x:LJx;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lyy;->w:Lsx;

    iget-object v1, p0, Lyy;->x:LJx;

    .line 1
    iget-boolean v2, v0, Lsx;->b:Z

    if-nez v2, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FeedKnownContentImpl"

    const-string v2, "Can\'t inform on known content due to internal feed error."

    .line 2
    invoke-static {v1, v2, v0}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lsx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v0}, LJx;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
