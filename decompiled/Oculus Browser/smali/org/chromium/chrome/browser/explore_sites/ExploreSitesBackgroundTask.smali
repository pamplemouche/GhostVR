.class public Lorg/chromium/chrome/browser/explore_sites/ExploreSitesBackgroundTask;
.super LH10;
.source "PG"


# instance fields
.field public e:LKR0;

.field public f:Lorg/chromium/chrome/browser/profiles/Profile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LH10;-><init>()V

    return-void
.end method

.method public static b(Z)V
    .locals 5

    .line 2
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object v0

    .line 3
    sget-object v1, LzT;->a:Landroid/content/Context;

    const/16 v2, 0x64

    .line 4
    check-cast v0, LjS0;

    invoke-virtual {v0, v1, v2}, LjS0;->a(Landroid/content/Context;I)V

    const/16 v0, 0x65

    const-wide/32 v1, 0x55d4a80

    const-wide/32 v3, 0x6ddd00

    .line 5
    invoke-static {v0, v1, v2, v3, v4}, LOS0;->b(IJJ)LHS0;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    iput v1, v0, LHS0;->c:I

    .line 7
    iput-boolean v1, v0, LHS0;->e:Z

    .line 8
    iput-boolean p0, v0, LHS0;->f:Z

    .line 9
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object p0

    .line 10
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 11
    invoke-virtual {v0}, LHS0;->a()LOS0;

    move-result-object v0

    .line 12
    check-cast p0, LjS0;

    invoke-virtual {p0, v1, v0}, LjS0;->a(Landroid/content/Context;LOS0;)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesBackgroundTask;->b(Z)V

    return-void
.end method

.method public b(Landroid/content/Context;LRS0;LKR0;)I
    .locals 0

    .line 1
    invoke-static {p1}, LhZ;->c(Landroid/content/Context;)I

    move-result p1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/content/Context;LRS0;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/content/Context;LRS0;LKR0;)V
    .locals 0

    .line 1
    invoke-static {}, LJ/N;->MwBQ$0Eq()I

    move-result p1

    .line 2
    invoke-static {p1}, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesBridge;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object p1

    .line 4
    sget-object p2, LzT;->a:Landroid/content/Context;

    const/16 p3, 0x65

    .line 5
    check-cast p1, LjS0;

    invoke-virtual {p1, p2, p3}, LjS0;->a(Landroid/content/Context;I)V

    return-void

    .line 6
    :cond_0
    iput-object p3, p0, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesBackgroundTask;->e:LKR0;

    .line 7
    iget-object p1, p0, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesBackgroundTask;->f:Lorg/chromium/chrome/browser/profiles/Profile;

    if-nez p1, :cond_1

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesBackgroundTask;->f:Lorg/chromium/chrome/browser/profiles/Profile;

    .line 8
    :cond_1
    iget-object p1, p0, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesBackgroundTask;->f:Lorg/chromium/chrome/browser/profiles/Profile;

    const/4 p2, 0x0

    .line 9
    new-instance p3, Lga0;

    invoke-direct {p3, p0}, Lga0;-><init>(Lorg/chromium/chrome/browser/explore_sites/ExploreSitesBackgroundTask;)V

    .line 10
    invoke-static {p1, p2, p3}, LJ/N;->MYfYpI3c(Ljava/lang/Object;ZLjava/lang/Object;)V

    const/4 p1, 0x2

    const/4 p2, 0x3

    const-string p3, "ExploreSites.CatalogUpdateRequestSource"

    .line 11
    invoke-static {p3, p1, p2}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public c(Landroid/content/Context;LRS0;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
