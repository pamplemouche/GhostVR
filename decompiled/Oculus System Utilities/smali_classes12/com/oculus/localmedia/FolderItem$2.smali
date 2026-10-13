.class final Lcom/oculus/localmedia/FolderItem$2;
.super Ljava/lang/Object;
.source "FolderItem.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/localmedia/FolderItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/oculus/localmedia/FolderItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oculus/localmedia/FolderItem;Lcom/oculus/localmedia/FolderItem;)I
    .locals 2
    .param p1, "mediaItem1"    # Lcom/oculus/localmedia/FolderItem;
    .param p2, "folderItem2"    # Lcom/oculus/localmedia/FolderItem;

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/oculus/localmedia/FolderItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/oculus/localmedia/FolderItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 32
    check-cast p1, Lcom/oculus/localmedia/FolderItem;

    check-cast p2, Lcom/oculus/localmedia/FolderItem;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/localmedia/FolderItem$2;->compare(Lcom/oculus/localmedia/FolderItem;Lcom/oculus/localmedia/FolderItem;)I

    move-result v0

    return v0
.end method
