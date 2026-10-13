.class public abstract Lxj0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpk0;
.implements LDj0;


# instance fields
.field public w:Lnk0;

.field public final x:LGj0;


# direct methods
.method public constructor <init>(LGj0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lxj0;->x:LGj0;

    return-void
.end method


# virtual methods
.method public abstract a()Landroid/content/Intent;
.end method

.method public a(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lxj0;->x:LGj0;

    invoke-virtual {p1}, LGj0;->g()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lxj0;->x:LGj0;

    invoke-virtual {p1}, LGj0;->d()Lok;

    move-result-object p1

    invoke-virtual {p1}, Lok;->n()LJm;

    return-void
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public abstract b()I
.end method

.method public b(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lxj0;->x:LGj0;

    invoke-virtual {p1}, LGj0;->g()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lxj0;->x:LGj0;

    invoke-virtual {p1}, LGj0;->b()V

    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    new-instance v0, Lorg/chromium/services/media_session/MediaMetadata;

    const-string v1, ""

    invoke-direct {v0, v1, v1, v1}, Lorg/chromium/services/media_session/MediaMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lxj0;->w:Lnk0;

    .line 3
    iput-object v0, v1, Lnk0;->a:Lorg/chromium/services/media_session/MediaMetadata;

    .line 4
    iget-object v1, p0, Lxj0;->x:LGj0;

    invoke-virtual {v1}, LGj0;->g()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lxj0;->x:LGj0;

    .line 6
    iget-object v1, v1, LGj0;->b:LOj;

    .line 7
    invoke-virtual {v1}, LOj;->d()Lcom/google/android/gms/cast/CastDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, v1, Lcom/google/android/gms/cast/CastDevice;->z:Ljava/lang/String;

    .line 9
    iput-object v1, v0, Lorg/chromium/services/media_session/MediaMetadata;->a:Ljava/lang/String;

    .line 10
    :cond_1
    iget-object v1, p0, Lxj0;->x:LGj0;

    invoke-virtual {v1}, LGj0;->d()Lok;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lok;->c()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 12
    :cond_2
    iget-object v1, v1, Lcom/google/android/gms/cast/MediaInfo;->z:Lcom/google/android/gms/cast/MediaMetadata;

    if-nez v1, :cond_3

    return-void

    :cond_3
    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    .line 13
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/MediaMetadata;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 14
    iput-object v2, v0, Lorg/chromium/services/media_session/MediaMetadata;->a:Ljava/lang/String;

    :cond_4
    const-string v2, "com.google.android.gms.cast.metadata.ARTIST"

    .line 15
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/MediaMetadata;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    .line 16
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/MediaMetadata;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    if-eqz v2, :cond_6

    .line 17
    iput-object v2, v0, Lorg/chromium/services/media_session/MediaMetadata;->b:Ljava/lang/String;

    :cond_6
    const-string v2, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    .line 18
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/MediaMetadata;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 19
    iput-object v1, v0, Lorg/chromium/services/media_session/MediaMetadata;->c:Ljava/lang/String;

    :cond_7
    return-void
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lxj0;->x:LGj0;

    invoke-virtual {p1}, LGj0;->g()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lxj0;->x:LGj0;

    invoke-virtual {p1}, LGj0;->d()Lok;

    move-result-object p1

    invoke-virtual {p1}, Lok;->o()LJm;

    return-void
.end method
