.class public abstract LXD0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(ILjava/lang/String;ILpm0;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 5

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    new-instance v3, Lcm0;

    invoke-direct {v3, p0, p1, p2}, Lcm0;-><init>(ILjava/lang/String;I)V

    const/4 p2, 0x1

    const-string v4, "sharing"

    .line 4
    invoke-static {p2, v4, v2, v3}, LXl0;->a(ZLjava/lang/String;Ljava/lang/String;Lcm0;)LPl0;

    move-result-object v2

    .line 5
    invoke-interface {v2, p3}, LPl0;->b(Lpm0;)LPl0;

    move-result-object p3

    .line 6
    invoke-interface {p3, p4}, LPl0;->d(Ljava/lang/CharSequence;)LPl0;

    move-result-object p3

    .line 7
    invoke-interface {p3, p5}, LPl0;->c(Ljava/lang/CharSequence;)LPl0;

    move-result-object p3

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    .line 9
    invoke-virtual {p4, p8}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    .line 10
    invoke-interface {p3, p4}, LPl0;->d(I)LPl0;

    move-result-object p3

    .line 11
    invoke-interface {p3, p1}, LPl0;->c(Ljava/lang/String;)LPl0;

    move-result-object p1

    .line 12
    invoke-interface {p1, p2}, LPl0;->b(I)LPl0;

    move-result-object p1

    .line 13
    invoke-interface {p1, p6}, LPl0;->c(I)LPl0;

    move-result-object p1

    .line 14
    invoke-interface {p1, p2}, LPl0;->f(Z)LPl0;

    move-result-object p1

    const/4 p2, -0x1

    .line 15
    invoke-interface {p1, p2}, LPl0;->e(I)LPl0;

    move-result-object p1

    if-eqz p7, :cond_0

    .line 16
    invoke-static {v1, p7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 17
    invoke-interface {p1, p2}, LPl0;->a(Landroid/graphics/Bitmap;)LPl0;

    .line 18
    :cond_0
    invoke-interface {p1}, LPl0;->b()LOl0;

    move-result-object p1

    .line 19
    new-instance p2, Lbm0;

    invoke-direct {p2, v0}, Lbm0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Lbm0;->a(LOl0;)V

    .line 20
    sget-object p2, Lnm0;->a:Lom0;

    .line 21
    iget-object p1, p1, LOl0;->a:Landroid/app/Notification;

    .line 22
    invoke-virtual {p2, p0, p1}, Lom0;->a(ILandroid/app/Notification;)V

    return-void
.end method
