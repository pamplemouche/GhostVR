.class public Lorg/chromium/chrome/browser/webapps/addtohomescreen/AddToHomescreenManager;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LMP0;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/ChromeActivity;

.field public b:Lle1;

.field public c:J


# direct methods
.method private onIconAvailable(Landroid/graphics/Bitmap;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/addtohomescreen/AddToHomescreenManager;->b:Lle1;

    sget-object v1, LKP0;->c:Lke1;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lorg/chromium/chrome/browser/webapps/addtohomescreen/AddToHomescreenManager;->b:Lle1;

    sget-object p2, LKP0;->e:Lhe1;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lle1;->a(Lhe1;Z)V

    return-void
.end method

.method private onUserTitleAvailable(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/addtohomescreen/AddToHomescreenManager;->b:Lle1;

    sget-object v1, LKP0;->a:Lke1;

    invoke-virtual {v0, v1, p1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lorg/chromium/chrome/browser/webapps/addtohomescreen/AddToHomescreenManager;->b:Lle1;

    sget-object v0, LKP0;->b:Lke1;

    invoke-virtual {p1, v0, p2}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lorg/chromium/chrome/browser/webapps/addtohomescreen/AddToHomescreenManager;->b:Lle1;

    sget-object p2, LKP0;->d:Lje1;

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    :goto_0
    invoke-virtual {p1, p2, p3}, Lle1;->a(Lje1;I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/webapps/addtohomescreen/AddToHomescreenManager;->c:J

    .line 2
    invoke-static {v0, v1, p0, p1}, LJ/N;->MJa2Y9iO(JLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lorg/chromium/chrome/browser/webapps/addtohomescreen/AddToHomescreenManager;->b:Lle1;

    .line 2
    iget-wide v0, p0, Lorg/chromium/chrome/browser/webapps/addtohomescreen/AddToHomescreenManager;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0, v1, p0}, LJ/N;->MPYTArqj(JLjava/lang/Object;)V

    .line 4
    iput-wide v2, p0, Lorg/chromium/chrome/browser/webapps/addtohomescreen/AddToHomescreenManager;->c:J

    :goto_0
    return-void
.end method

.method public showDialog()V
    .locals 5

    .line 1
    sget-object v0, LKP0;->h:[LUd1;

    .line 2
    invoke-static {v0}, Lle1;->a([LUd1;)Ljava/util/Map;

    move-result-object v0

    .line 3
    new-instance v1, Lle1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lle1;-><init>(Ljava/util/Map;LVd1;)V

    .line 4
    iput-object v1, p0, Lorg/chromium/chrome/browser/webapps/addtohomescreen/AddToHomescreenManager;->b:Lle1;

    .line 5
    new-instance v0, LIP0;

    iget-object v2, p0, Lorg/chromium/chrome/browser/webapps/addtohomescreen/AddToHomescreenManager;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 6
    invoke-virtual {v2}, LBg0;->o()LBd1;

    move-result-object v3

    .line 7
    invoke-static {}, Lorg/chromium/chrome/browser/banners/AppBannerManager;->b()I

    move-result v4

    invoke-direct {v0, v2, v3, v4, p0}, LIP0;-><init>(Landroid/content/Context;LBd1;ILMP0;)V

    sget-object v2, LJP0;->a:Lne1;

    .line 8
    invoke-static {v1, v0, v2}, Loe1;->a(Lqe1;Ljava/lang/Object;Lne1;)Loe1;

    return-void
.end method
