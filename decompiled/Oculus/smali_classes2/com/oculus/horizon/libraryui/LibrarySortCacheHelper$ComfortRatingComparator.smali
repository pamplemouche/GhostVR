.class Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$ComfortRatingComparator;
.super Ljava/lang/Object;
.source "LibrarySortCacheHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComfortRatingComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/oculus/library/model/App;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDefaultComparator:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$NameComparator;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$NameComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$NameComparator;-><init>(Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$1;)V

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$ComfortRatingComparator;->mDefaultComparator:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$NameComparator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$1;)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$ComfortRatingComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oculus/library/model/App;Lcom/oculus/library/model/App;)I
    .locals 2

    .prologue
    .line 186
    invoke-static {p1, p2}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;->access$300(Lcom/oculus/library/model/App;Lcom/oculus/library/model/App;)I

    move-result v0

    .line 187
    if-eqz v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v0

    .line 190
    :cond_1
    iget-object v0, p1, Lcom/oculus/library/model/App;->comfortRating:Lcom/oculus/library/model/ComfortRating;

    iget-object v1, p2, Lcom/oculus/library/model/App;->comfortRating:Lcom/oculus/library/model/ComfortRating;

    invoke-virtual {v0, v1}, Lcom/oculus/library/model/ComfortRating;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    .line 191
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$ComfortRatingComparator;->mDefaultComparator:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$NameComparator;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$NameComparator;->compare(Lcom/oculus/library/model/App;Lcom/oculus/library/model/App;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 180
    check-cast p1, Lcom/oculus/library/model/App;

    check-cast p2, Lcom/oculus/library/model/App;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$ComfortRatingComparator;->compare(Lcom/oculus/library/model/App;Lcom/oculus/library/model/App;)I

    move-result v0

    return v0
.end method
