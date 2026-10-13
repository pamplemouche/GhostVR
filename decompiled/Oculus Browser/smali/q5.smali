.class public Lq5;
.super Lp5;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lp5;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void
.end method


# virtual methods
.method public d()Lt5;
    .locals 2

    .line 1
    iget-object v0, p0, Lp5;->a:Ljava/lang/Object;

    invoke-static {v0}, LA5;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lv5;

    invoke-direct {v1, v0}, Lv5;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
