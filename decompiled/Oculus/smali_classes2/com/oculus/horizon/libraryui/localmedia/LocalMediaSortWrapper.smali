.class public Lcom/oculus/horizon/libraryui/localmedia/LocalMediaSortWrapper;
.super Ljava/lang/Object;
.source "LocalMediaSortWrapper.java"


# instance fields
.field private final mDisplayName:Ljava/lang/String;

.field private final mSortType:Lcom/oculus/localmedia/MediaSort;


# direct methods
.method public constructor <init>(Lcom/oculus/localmedia/MediaSort;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaSortWrapper;->mSortType:Lcom/oculus/localmedia/MediaSort;

    .line 13
    iput-object p2, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaSortWrapper;->mDisplayName:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getSortType()Lcom/oculus/localmedia/MediaSort;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaSortWrapper;->mSortType:Lcom/oculus/localmedia/MediaSort;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaSortWrapper;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method
