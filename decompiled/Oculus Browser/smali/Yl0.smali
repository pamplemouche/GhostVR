.class public LYl0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LPl0;


# instance fields
.field public final a:LG3;

.field public final b:Lcm0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lwm0;Lcm0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p3, p2}, Lwm0;->a(Ljava/lang/String;)V

    .line 4
    :cond_0
    new-instance p3, LG3;

    invoke-direct {p3, p1, p2}, LG3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, LYl0;->a:LG3;

    .line 5
    iput-object p4, p0, LYl0;->b:Lcm0;

    if-eqz p4, :cond_1

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 v0, 0x2

    .line 6
    invoke-static {v0, p1, p4, p2}, LZl0;->a(IILcm0;Lpm0;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 7
    iget-object p2, p3, LG3;->N:Landroid/app/Notification;

    iput-object p1, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/RemoteViews;)LOl0;
    .locals 2

    .line 41
    new-instance v0, LOl0;

    iget-object v1, p0, LYl0;->a:LG3;

    .line 42
    iput-object p1, v1, LG3;->G:Landroid/widget/RemoteViews;

    .line 43
    invoke-virtual {v1}, LG3;->a()Landroid/app/Notification;

    move-result-object p1

    iget-object v1, p0, LYl0;->b:Lcm0;

    invoke-direct {v0, p1, v1}, LOl0;-><init>(Landroid/app/Notification;Lcm0;)V

    return-object v0
.end method

.method public a(I)LPl0;
    .locals 1

    .line 8
    iget-object v0, p0, LYl0;->a:LG3;

    .line 9
    iput p1, v0, LG3;->D:I

    return-object p0
.end method

.method public a(IIZ)LPl0;
    .locals 1

    .line 18
    iget-object v0, p0, LYl0;->a:LG3;

    .line 19
    iput p1, v0, LG3;->r:I

    .line 20
    iput p2, v0, LG3;->s:I

    .line 21
    iput-boolean p3, v0, LG3;->t:Z

    return-object p0
.end method

.method public a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)LPl0;
    .locals 12

    .line 10
    iget-object v0, p0, LYl0;->a:LG3;

    .line 11
    iget-object v0, v0, LG3;->b:Ljava/util/ArrayList;

    new-instance v11, LE3;

    .line 12
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v11

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v10}, LE3;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[LM3;[LM3;ZIZ)V

    .line 13
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(ILjava/lang/CharSequence;Lpm0;I)LPl0;
    .locals 2

    const/4 v0, 0x1

    .line 14
    iget-object v1, p0, LYl0;->b:Lcm0;

    invoke-static {v0, p4, v1, p3}, LZl0;->a(IILcm0;Lpm0;)Landroid/app/PendingIntent;

    move-result-object p3

    .line 15
    invoke-virtual {p0, p1, p2, p3}, LYl0;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)LPl0;

    return-object p0
.end method

.method public a(J)LPl0;
    .locals 1

    .line 24
    iget-object v0, p0, LYl0;->a:LG3;

    .line 25
    iget-object v0, v0, LG3;->N:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    return-object p0
.end method

.method public a(LS5;[ILandroid/app/PendingIntent;Z)LPl0;
    .locals 0

    .line 33
    new-instance p4, Lb5;

    invoke-direct {p4}, Lb5;-><init>()V

    .line 34
    invoke-virtual {p1}, LS5;->b()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p1

    .line 35
    iput-object p1, p4, Lb5;->d:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 36
    iput-object p2, p4, Lb5;->c:[I

    .line 37
    iput-object p3, p4, Lb5;->e:Landroid/app/PendingIntent;

    .line 38
    iget-object p1, p0, LYl0;->a:LG3;

    invoke-virtual {p1, p4}, LG3;->a(LH3;)LG3;

    return-object p0
.end method

.method public a(Landroid/app/Notification$Action;)LPl0;
    .locals 0

    return-object p0
.end method

.method public a(Landroid/app/Notification$Action;II)LPl0;
    .locals 0

    return-object p0
.end method

.method public a(Landroid/app/Notification$BigPictureStyle;)LPl0;
    .locals 0

    return-object p0
.end method

.method public a(Landroid/app/Notification$BigTextStyle;)LPl0;
    .locals 0

    return-object p0
.end method

.method public a(Landroid/app/Notification;)LPl0;
    .locals 1

    .line 31
    iget-object v0, p0, LYl0;->a:LG3;

    .line 32
    iput-object p1, v0, LG3;->E:Landroid/app/Notification;

    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;)LPl0;
    .locals 1

    .line 1
    iget-object v0, p0, LYl0;->a:LG3;

    .line 2
    iput-object p1, v0, LG3;->f:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)LPl0;
    .locals 1

    .line 26
    iget-object v0, p0, LYl0;->a:LG3;

    invoke-virtual {v0, p1}, LG3;->a(Landroid/graphics/Bitmap;)LG3;

    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Icon;)LPl0;
    .locals 0

    return-object p0
.end method

.method public a(Landroid/os/Bundle;)LPl0;
    .locals 2

    .line 3
    iget-object v0, p0, LYl0;->a:LG3;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 4
    iget-object v1, v0, LG3;->B:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, v0, LG3;->B:Landroid/os/Bundle;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public a(Ljava/lang/CharSequence;)LPl0;
    .locals 1

    .line 22
    iget-object v0, p0, LYl0;->a:LG3;

    if-eqz v0, :cond_0

    .line 23
    invoke-static {p1}, LG3;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, LG3;->p:Ljava/lang/CharSequence;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public a(Ljava/lang/String;)LPl0;
    .locals 1

    .line 39
    iget-object v0, p0, LYl0;->a:LG3;

    .line 40
    iput-object p1, v0, LG3;->A:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lpm0;)LPl0;
    .locals 4

    .line 16
    iget-object v0, p0, LYl0;->a:LG3;

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, LYl0;->b:Lcm0;

    invoke-static {v1, v2, v3, p1}, LZl0;->a(IILcm0;Lpm0;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 17
    iget-object v0, v0, LG3;->N:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public a(Z)LPl0;
    .locals 2

    .line 29
    iget-object v0, p0, LYl0;->a:LG3;

    const/16 v1, 0x8

    .line 30
    invoke-virtual {v0, v1, p1}, LG3;->a(IZ)V

    return-object p0
.end method

.method public a([J)LPl0;
    .locals 1

    .line 27
    iget-object v0, p0, LYl0;->a:LG3;

    .line 28
    iget-object v0, v0, LG3;->N:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    return-object p0
.end method

.method public a()Landroid/app/Notification;
    .locals 3

    .line 44
    :try_start_0
    iget-object v0, p0, LYl0;->a:LG3;

    invoke-virtual {v0}, LG3;->a()Landroid/app/Notification;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "NotifCompatBuilder"

    const-string v2, "Failed to build notification."

    .line 45
    invoke-static {v0, v2, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, LYl0;->b:Lcm0;

    if-eqz v0, :cond_1

    .line 47
    iget v0, v0, Lcm0;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Mobile.SystemNotification.CreationFailure"

    .line 48
    invoke-static {v1, v0}, Lom0;->a(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public b()LOl0;
    .locals 3

    .line 16
    new-instance v0, LOl0;

    invoke-virtual {p0}, LYl0;->a()Landroid/app/Notification;

    move-result-object v1

    iget-object v2, p0, LYl0;->b:Lcm0;

    invoke-direct {v0, v1, v2}, LOl0;-><init>(Landroid/app/Notification;Lcm0;)V

    return-object v0
.end method

.method public b(I)LPl0;
    .locals 1

    .line 10
    iget-object v0, p0, LYl0;->a:LG3;

    .line 11
    iput p1, v0, LG3;->l:I

    return-object p0
.end method

.method public b(Landroid/app/PendingIntent;)LPl0;
    .locals 1

    .line 8
    iget-object v0, p0, LYl0;->a:LG3;

    .line 9
    iget-object v0, v0, LG3;->N:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public b(Landroid/widget/RemoteViews;)LPl0;
    .locals 1

    .line 14
    iget-object v0, p0, LYl0;->a:LG3;

    .line 15
    iput-object p1, v0, LG3;->F:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)LPl0;
    .locals 1

    .line 4
    iget-object v0, p0, LYl0;->a:LG3;

    .line 5
    iget-object v0, v0, LG3;->N:Landroid/app/Notification;

    invoke-static {p1}, LG3;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(Ljava/lang/String;)LPl0;
    .locals 1

    .line 12
    iget-object v0, p0, LYl0;->a:LG3;

    if-eqz v0, :cond_0

    .line 13
    invoke-static {p1}, LG3;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, LG3;->j:Ljava/lang/CharSequence;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public b(Lpm0;)LPl0;
    .locals 2

    .line 1
    iget-object v0, p0, LYl0;->b:Lcm0;

    const/4 v1, 0x0

    invoke-static {v1, v1, v0, p1}, LZl0;->a(IILcm0;Lpm0;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 2
    iget-object v0, p0, LYl0;->a:LG3;

    .line 3
    iput-object p1, v0, LG3;->f:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public b(Z)LPl0;
    .locals 1

    .line 6
    iget-object v0, p0, LYl0;->a:LG3;

    .line 7
    iput-boolean p1, v0, LG3;->m:Z

    return-object p0
.end method

.method public c(I)LPl0;
    .locals 1

    .line 2
    iget-object v0, p0, LYl0;->a:LG3;

    .line 3
    iget-object v0, v0, LG3;->N:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)LPl0;
    .locals 1

    .line 1
    iget-object v0, p0, LYl0;->a:LG3;

    invoke-virtual {v0, p1}, LG3;->a(Ljava/lang/CharSequence;)LG3;

    return-object p0
.end method

.method public c(Ljava/lang/String;)LPl0;
    .locals 1

    .line 6
    iget-object v0, p0, LYl0;->a:LG3;

    .line 7
    iput-object p1, v0, LG3;->u:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)LPl0;
    .locals 1

    .line 4
    iget-object v0, p0, LYl0;->a:LG3;

    .line 5
    iput-boolean p1, v0, LG3;->x:Z

    return-object p0
.end method

.method public d(Ljava/lang/String;)LOl0;
    .locals 2

    .line 6
    new-instance v0, LF3;

    iget-object v1, p0, LYl0;->a:LG3;

    invoke-direct {v0, v1}, LF3;-><init>(LG3;)V

    .line 7
    invoke-static {p1}, LG3;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, LF3;->c:Ljava/lang/CharSequence;

    .line 8
    new-instance p1, LOl0;

    .line 9
    iget-object v0, v0, LH3;->a:LG3;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, LG3;->a()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, LYl0;->b:Lcm0;

    invoke-direct {p1, v0, v1}, LOl0;-><init>(Landroid/app/Notification;Lcm0;)V

    return-object p1
.end method

.method public d(I)LPl0;
    .locals 1

    .line 2
    iget-object v0, p0, LYl0;->a:LG3;

    .line 3
    iput p1, v0, LG3;->C:I

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)LPl0;
    .locals 1

    .line 1
    iget-object v0, p0, LYl0;->a:LG3;

    invoke-virtual {v0, p1}, LG3;->b(Ljava/lang/CharSequence;)LG3;

    return-object p0
.end method

.method public d(Z)LPl0;
    .locals 2

    .line 4
    iget-object v0, p0, LYl0;->a:LG3;

    const/4 v1, 0x2

    .line 5
    invoke-virtual {v0, v1, p1}, LG3;->a(IZ)V

    return-object p0
.end method

.method public e(I)LPl0;
    .locals 1

    .line 3
    iget-object v0, p0, LYl0;->a:LG3;

    .line 4
    iget-object v0, v0, LG3;->N:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    .line 5
    iget p1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Landroid/app/Notification;->flags:I

    :cond_0
    return-object p0
.end method

.method public e(Z)LPl0;
    .locals 1

    .line 1
    iget-object v0, p0, LYl0;->a:LG3;

    .line 2
    iput-boolean p1, v0, LG3;->v:Z

    return-object p0
.end method

.method public f(Z)LPl0;
    .locals 2

    .line 1
    iget-object v0, p0, LYl0;->a:LG3;

    const/16 v1, 0x10

    .line 2
    invoke-virtual {v0, v1, p1}, LG3;->a(IZ)V

    return-object p0
.end method
