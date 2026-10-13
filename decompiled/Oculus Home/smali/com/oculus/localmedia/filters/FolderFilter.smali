.class public Lcom/oculus/localmedia/filters/FolderFilter;
.super Ljava/lang/Object;
.source "FolderFilter.java"

# interfaces
.implements Lcom/oculus/localmedia/filters/MediaItemFilter;


# instance fields
.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderPath"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/oculus/localmedia/filters/FolderFilter;->mPath:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public match(Lcom/oculus/localmedia/MediaItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/oculus/localmedia/MediaItem;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oculus/localmedia/filters/FolderFilter;->mPath:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/oculus/localmedia/MediaItem;->getFolderPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
