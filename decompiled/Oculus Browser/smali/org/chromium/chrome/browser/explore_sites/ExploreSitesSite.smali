.class public Lorg/chromium/chrome/browser/explore_sites/ExploreSitesSite;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final b:Lee1;

.field public static final c:Lje1;

.field public static final d:Lfe1;

.field public static final e:Lfe1;

.field public static final f:Lke1;

.field public static final g:Lhe1;


# instance fields
.field public a:Lle1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lee1;

    invoke-direct {v0}, Lee1;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesSite;->b:Lee1;

    .line 2
    new-instance v0, Lje1;

    invoke-direct {v0}, Lje1;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesSite;->c:Lje1;

    .line 3
    new-instance v0, Lfe1;

    invoke-direct {v0}, Lfe1;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesSite;->d:Lfe1;

    .line 4
    new-instance v0, Lfe1;

    invoke-direct {v0}, Lfe1;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesSite;->e:Lfe1;

    .line 5
    new-instance v0, Lke1;

    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, v1}, Lke1;-><init>(Z)V

    .line 7
    sput-object v0, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesSite;->f:Lke1;

    .line 8
    new-instance v0, Lhe1;

    invoke-direct {v0}, Lhe1;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesSite;->g:Lhe1;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [LUd1;

    .line 2
    sget-object v1, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesSite;->b:Lee1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesSite;->c:Lje1;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesSite;->d:Lfe1;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesSite;->e:Lfe1;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesSite;->f:Lke1;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesSite;->g:Lhe1;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 3
    invoke-static {v0}, Lle1;->a([LUd1;)Ljava/util/Map;

    move-result-object v0

    .line 4
    sget-object v1, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesSite;->b:Lee1;

    .line 5
    new-instance v2, LZd1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LZd1;-><init>(LVd1;)V

    .line 6
    iput p1, v2, LZd1;->a:I

    .line 7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p1, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesSite;->d:Lfe1;

    .line 9
    new-instance v1, Lbe1;

    invoke-direct {v1, v3}, Lbe1;-><init>(LVd1;)V

    .line 10
    iput-object p2, v1, Lbe1;->a:Ljava/lang/Object;

    .line 11
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object p1, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesSite;->e:Lfe1;

    .line 13
    new-instance p2, Lbe1;

    invoke-direct {p2, v3}, Lbe1;-><init>(LVd1;)V

    .line 14
    iput-object p3, p2, Lbe1;->a:Ljava/lang/Object;

    .line 15
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object p1, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesSite;->g:Lhe1;

    .line 17
    new-instance p2, LWd1;

    invoke-direct {p2, v3}, LWd1;-><init>(LVd1;)V

    .line 18
    iput-boolean p4, p2, LWd1;->a:Z

    .line 19
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object p1, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesSite;->c:Lje1;

    const/4 p2, -0x1

    .line 21
    new-instance p3, LZd1;

    invoke-direct {p3, v3}, LZd1;-><init>(LVd1;)V

    .line 22
    iput p2, p3, LZd1;->a:I

    .line 23
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance p1, Lle1;

    invoke-direct {p1, v0, v3}, Lle1;-><init>(Ljava/util/Map;LVd1;)V

    .line 25
    iput-object p1, p0, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesSite;->a:Lle1;

    return-void
.end method

.method public static createSiteInCategory(ILjava/lang/String;Ljava/lang/String;ZLorg/chromium/chrome/browser/explore_sites/ExploreSitesCategory;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesSite;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesSite;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 2
    iget-object p0, p4, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesCategory;->b:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p0, v0, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesSite;->a:Lle1;

    .line 4
    sget-object p1, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesSite;->g:Lhe1;

    invoke-virtual {p0, p1}, Lle1;->a(Lce1;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5
    iget p0, p4, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesCategory;->c:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p4, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesCategory;->c:I

    :cond_0
    return-void
.end method
