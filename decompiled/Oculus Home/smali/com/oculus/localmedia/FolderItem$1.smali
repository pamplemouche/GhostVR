.class final Lcom/oculus/localmedia/FolderItem$1;
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
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oculus/localmedia/FolderItem;Lcom/oculus/localmedia/FolderItem;)I
    .locals 4
    .param p1, "folderItem1"    # Lcom/oculus/localmedia/FolderItem;
    .param p2, "folderItem2"    # Lcom/oculus/localmedia/FolderItem;

    .prologue
    .line 29
    invoke-static {p2}, Lcom/oculus/localmedia/FolderItem;->access$000(Lcom/oculus/localmedia/FolderItem;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/oculus/localmedia/FolderItem;->access$000(Lcom/oculus/localmedia/FolderItem;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/oculus/localmedia/FolderItem;

    check-cast p2, Lcom/oculus/localmedia/FolderItem;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/localmedia/FolderItem$1;->compare(Lcom/oculus/localmedia/FolderItem;Lcom/oculus/localmedia/FolderItem;)I

    move-result v0

    return v0
.end method
