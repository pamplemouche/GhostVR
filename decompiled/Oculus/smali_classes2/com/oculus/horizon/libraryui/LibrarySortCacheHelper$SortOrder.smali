.class public final enum Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;
.super Ljava/lang/Enum;
.source "LibrarySortCacheHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

.field public static final enum COMFORT:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

.field public static final enum NAME:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

.field public static final enum RECENT:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;


# instance fields
.field private mDisplayTitleResourceId:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private mItemId:I

.field private mLibraryComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 141
    new-instance v0, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    const-string v1, "RECENT"

    sget v3, Lcom/oculus/horizon/R$string;->library_sort_selector_recently_used_asc:I

    new-instance v4, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$MostRecentlyUsedComparator;

    invoke-direct {v4, v11}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$MostRecentlyUsedComparator;-><init>(Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$1;)V

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;-><init>(Ljava/lang/String;IILjava/util/Comparator;I)V

    sput-object v0, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->RECENT:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    .line 142
    new-instance v3, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    const-string v4, "NAME"

    sget v6, Lcom/oculus/horizon/R$string;->library_sort_selector_name_asc:I

    new-instance v7, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$NameComparator;

    invoke-direct {v7, v11}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$NameComparator;-><init>(Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$1;)V

    move v5, v9

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;-><init>(Ljava/lang/String;IILjava/util/Comparator;I)V

    sput-object v3, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->NAME:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    .line 143
    new-instance v3, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    const-string v4, "COMFORT"

    sget v6, Lcom/oculus/horizon/R$string;->library_sort_selector_comfort_asc:I

    new-instance v7, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$ComfortRatingComparator;

    invoke-direct {v7, v11}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$ComfortRatingComparator;-><init>(Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$1;)V

    move v5, v10

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;-><init>(Ljava/lang/String;IILjava/util/Comparator;I)V

    sput-object v3, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->COMFORT:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    .line 140
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    sget-object v1, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->RECENT:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->NAME:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    aput-object v1, v0, v9

    sget-object v1, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->COMFORT:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    aput-object v1, v0, v10

    sput-object v0, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->$VALUES:[Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/util/Comparator;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 150
    iput p3, p0, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->mDisplayTitleResourceId:I

    .line 151
    iput-object p4, p0, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->mLibraryComparator:Ljava/util/Comparator;

    .line 152
    iput p5, p0, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->mItemId:I

    .line 153
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;
    .locals 1

    .prologue
    .line 140
    const-class v0, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->$VALUES:[Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    invoke-virtual {v0}, [Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    return-object v0
.end method


# virtual methods
.method public getDisplayTitleResourceId()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->mDisplayTitleResourceId:I

    return v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->mItemId:I

    return v0
.end method

.method public getLibraryComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->mLibraryComparator:Ljava/util/Comparator;

    return-object v0
.end method
