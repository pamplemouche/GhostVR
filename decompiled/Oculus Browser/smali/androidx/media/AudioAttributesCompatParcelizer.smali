.class public final Landroidx/media/AudioAttributesCompatParcelizer;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(LWi;)Landroid/support/v4/media/AudioAttributesCompat;
    .locals 3

    .line 1
    new-instance v0, Landroid/support/v4/media/AudioAttributesCompat;

    invoke-direct {v0}, Landroid/support/v4/media/AudioAttributesCompat;-><init>()V

    .line 2
    iget-object v1, v0, Landroid/support/v4/media/AudioAttributesCompat;->a:LK4;

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p0, v2}, LWi;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, LWi;->c()LYi;

    move-result-object v1

    .line 5
    :goto_0
    check-cast v1, LK4;

    iput-object v1, v0, Landroid/support/v4/media/AudioAttributesCompat;->a:LK4;

    return-object v0
.end method

.method public static write(Landroid/support/v4/media/AudioAttributesCompat;LWi;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/AudioAttributesCompat;->a:LK4;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, LWi;->b(I)V

    .line 3
    invoke-virtual {p1, p0}, LWi;->a(LYi;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 4
    throw p0
.end method
