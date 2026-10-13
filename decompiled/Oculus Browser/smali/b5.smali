.class public Lb5;
.super LH3;
.source "PG"


# instance fields
.field public c:[I

.field public d:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field public e:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LH3;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb5;->c:[I

    return-void
.end method


# virtual methods
.method public a(LC3;)V
    .locals 2

    .line 1
    check-cast p1, LI3;

    .line 2
    iget-object p1, p1, LI3;->a:Landroid/app/Notification$Builder;

    .line 3
    new-instance v0, Landroid/app/Notification$MediaStyle;

    invoke-direct {v0}, Landroid/app/Notification$MediaStyle;-><init>()V

    .line 4
    iget-object v1, p0, Lb5;->c:[I

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    .line 6
    :cond_0
    iget-object v1, p0, Lb5;->d:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->w:Ljava/lang/Object;

    .line 8
    check-cast v1, Landroid/media/session/MediaSession$Token;

    invoke-virtual {v0, v1}, Landroid/app/Notification$MediaStyle;->setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;

    .line 9
    :cond_1
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    return-void
.end method

.method public b(LC3;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(LC3;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
