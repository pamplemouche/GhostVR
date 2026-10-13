.class public Lorg/chromium/chrome/browser/explore_sites/ExploreSitesCategoryTile;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, LJ/N;->MFDJT1zY()Ljava/lang/String;

    return-void
.end method

.method public static createInList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesCategoryTile;

    invoke-direct {v0, p3, p2, p1}, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesCategoryTile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
