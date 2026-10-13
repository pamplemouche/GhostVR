.class public Lcom/oculus/horizon/libraryui/LibrarySortWrapper;
.super Ljava/lang/Object;
.source "LibrarySortWrapper.java"


# instance fields
.field private final mDisplayName:Ljava/lang/String;

.field private final mSortOrder:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/LibrarySortWrapper;->mSortOrder:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    .line 11
    iput-object p2, p0, Lcom/oculus/horizon/libraryui/LibrarySortWrapper;->mDisplayName:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getSort()Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibrarySortWrapper;->mSortOrder:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibrarySortWrapper;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method
