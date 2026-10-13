.class public final LL9;
.super Lm5;
.source "PG"


# instance fields
.field public final synthetic z:LQ9;


# direct methods
.method public constructor <init>(LQ9;)V
    .locals 0

    .line 1
    iput-object p1, p0, LL9;->z:LQ9;

    invoke-direct {p0}, Lm5;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, LL9;->z:LQ9;

    iget-object v1, v0, LQ9;->n0:Lx5;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, LQ9;->o0:LL9;

    invoke-virtual {v1, v0}, Lx5;->b(Lm5;)V

    .line 3
    iget-object v0, p0, LL9;->z:LQ9;

    const/4 v1, 0x0

    iput-object v1, v0, LQ9;->n0:Lx5;

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 1

    .line 6
    iget-object v0, p0, LL9;->z:LQ9;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->b()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    :goto_0
    iput-object p1, v0, LQ9;->q0:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 7
    iget-object p1, p0, LL9;->z:LQ9;

    invoke-virtual {p1}, LQ9;->g()V

    .line 8
    iget-object p1, p0, LL9;->z:LQ9;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LQ9;->d(Z)V

    return-void
.end method

.method public a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 1

    .line 4
    iget-object v0, p0, LL9;->z:LQ9;

    iput-object p1, v0, LQ9;->p0:Landroid/support/v4/media/session/PlaybackStateCompat;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, LQ9;->d(Z)V

    return-void
.end method
