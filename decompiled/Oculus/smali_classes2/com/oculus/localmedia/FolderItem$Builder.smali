.class public Lcom/oculus/localmedia/FolderItem$Builder;
.super Ljava/lang/Object;
.source "FolderItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/localmedia/FolderItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDateAdded:J

.field private mName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/oculus/localmedia/FolderItem;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 117
    iget-object v0, p0, Lcom/oculus/localmedia/FolderItem$Builder;->mPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 118
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v1, "FilePath is mandatory to build a folder item."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_0
    return-object v6

    :cond_0
    new-instance v1, Lcom/oculus/localmedia/FolderItem;

    iget-object v2, p0, Lcom/oculus/localmedia/FolderItem$Builder;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/localmedia/FolderItem$Builder;->mPath:Ljava/lang/String;

    iget-wide v4, p0, Lcom/oculus/localmedia/FolderItem$Builder;->mDateAdded:J

    invoke-direct/range {v1 .. v6}, Lcom/oculus/localmedia/FolderItem;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/oculus/localmedia/FolderItem$1;)V

    move-object v6, v1

    goto :goto_0
.end method

.method public setDateAdded(J)Lcom/oculus/localmedia/FolderItem$Builder;
    .locals 1

    .prologue
    .line 112
    iput-wide p1, p0, Lcom/oculus/localmedia/FolderItem$Builder;->mDateAdded:J

    .line 113
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/oculus/localmedia/FolderItem$Builder;
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/oculus/localmedia/FolderItem$Builder;->mName:Ljava/lang/String;

    .line 103
    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/oculus/localmedia/FolderItem$Builder;
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/oculus/localmedia/FolderItem$Builder;->mPath:Ljava/lang/String;

    .line 108
    return-object p0
.end method
