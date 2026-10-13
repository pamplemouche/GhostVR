.class public Lqm0;
.super LWl0;
.source "PG"


# instance fields
.field public final y:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, LWl0;-><init>(Landroid/content/res/Resources;)V

    .line 2
    iput-object p1, p0, Lqm0;->y:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcm0;)LOl0;
    .locals 3

    .line 1
    iget-object v0, p0, LWl0;->g:Ljava/lang/String;

    iget-object v1, p0, LWl0;->m:Ljava/lang/String;

    const/4 v2, 0x0

    .line 2
    invoke-static {v2, v0, v1, p1}, LXl0;->a(ZLjava/lang/String;Ljava/lang/String;Lcm0;)LPl0;

    move-result-object p1

    .line 3
    iget-object v0, p0, LWl0;->d:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, LPl0;->d(Ljava/lang/CharSequence;)LPl0;

    .line 4
    iget-object v0, p0, LWl0;->e:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, LPl0;->c(Ljava/lang/CharSequence;)LPl0;

    .line 5
    iget-object v0, p0, LWl0;->f:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, LPl0;->a(Ljava/lang/CharSequence;)LPl0;

    .line 6
    iget-object v0, p0, LWl0;->h:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, LPl0;->b(Ljava/lang/CharSequence;)LPl0;

    .line 7
    iget-object v0, p0, LWl0;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    iget-object v1, p0, LWl0;->i:Landroid/graphics/Bitmap;

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    .line 10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 11
    iget-object v1, p0, LWl0;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    .line 12
    :cond_0
    invoke-interface {p1, v0}, LPl0;->a(Landroid/app/Notification$BigPictureStyle;)LPl0;

    goto :goto_0

    .line 13
    :cond_1
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v1, p0, LWl0;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-interface {p1, v0}, LPl0;->a(Landroid/app/Notification$BigTextStyle;)LPl0;

    .line 14
    :goto_0
    invoke-virtual {p0}, LWl0;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1, v0}, LPl0;->a(Landroid/graphics/Bitmap;)LPl0;

    .line 15
    iget v0, p0, LWl0;->j:I

    iget-object v1, p0, LWl0;->k:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 16
    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-interface {p1, v0}, LPl0;->a(Landroid/graphics/drawable/Icon;)LPl0;

    goto :goto_1

    .line 17
    :cond_2
    invoke-interface {p1, v0}, LPl0;->c(I)LPl0;

    .line 18
    :goto_1
    iget-object v0, p0, LWl0;->n:Lpm0;

    invoke-interface {p1, v0}, LPl0;->b(Lpm0;)LPl0;

    .line 19
    iget-object v0, p0, LWl0;->o:Lpm0;

    invoke-interface {p1, v0}, LPl0;->a(Lpm0;)LPl0;

    .line 20
    iget-object v0, p0, LWl0;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LVl0;

    .line 21
    invoke-static {p1, v1}, LWl0;->a(LPl0;LVl0;)V

    goto :goto_2

    .line 22
    :cond_3
    iget-object v0, p0, LWl0;->q:LVl0;

    if-eqz v0, :cond_4

    .line 23
    invoke-static {p1, v0}, LWl0;->a(LPl0;LVl0;)V

    .line 24
    :cond_4
    iget v0, p0, LWl0;->v:I

    invoke-interface {p1, v0}, LPl0;->b(I)LPl0;

    .line 25
    iget v0, p0, LWl0;->r:I

    invoke-interface {p1, v0}, LPl0;->e(I)LPl0;

    .line 26
    iget-object v0, p0, LWl0;->s:[J

    if-eqz v0, :cond_5

    invoke-interface {p1, v0}, LPl0;->a([J)LPl0;

    .line 27
    :cond_5
    iget-wide v0, p0, LWl0;->t:J

    invoke-interface {p1, v0, v1}, LPl0;->a(J)LPl0;

    const/4 v0, 0x1

    .line 28
    invoke-interface {p1, v0}, LPl0;->b(Z)LPl0;

    .line 29
    iget-boolean v1, p0, LWl0;->u:Z

    xor-int/2addr v0, v1

    invoke-interface {p1, v0}, LPl0;->a(Z)LPl0;

    .line 30
    iget-object v0, p0, LWl0;->f:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, LWl0;->a(LPl0;Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lqm0;->y:Landroid/content/Context;

    invoke-virtual {p0, v0}, LWl0;->a(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    invoke-interface {p1, v0}, LPl0;->a(Landroid/app/Notification;)LPl0;

    .line 32
    invoke-interface {p1}, LPl0;->b()LOl0;

    move-result-object p1

    return-object p1
.end method
