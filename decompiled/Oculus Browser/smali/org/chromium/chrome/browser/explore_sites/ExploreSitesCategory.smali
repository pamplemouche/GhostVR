.class public Lorg/chromium/chrome/browser/explore_sites/ExploreSitesCategory;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:Ljava/util/List;

.field public c:I


# direct methods
.method public constructor <init>(IILjava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesCategory;->a:I

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesCategory;->b:Ljava/util/List;

    return-void
.end method

.method public static createAndAppendToList(IILjava/lang/String;IILjava/util/List;)Lorg/chromium/chrome/browser/explore_sites/ExploreSitesCategory;
    .locals 7

    .line 1
    new-instance v6, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesCategory;

    move-object v0, v6

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/explore_sites/ExploreSitesCategory;-><init>(IILjava/lang/String;II)V

    .line 2
    invoke-interface {p5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v6
.end method
