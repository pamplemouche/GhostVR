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
.field private mActorName:Ljava/lang/String;

.field private mActorPicture:Ljava/lang/String;

.field private mCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oculus/localmedia/MediaType;",
            "Lcom/oculus/localmedia/FolderMediaCount;",
            ">;"
        }
    .end annotation
.end field

.field private mDateAdded:J

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/localmedia/FolderItem$Builder;->mItems:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/localmedia/FolderItem$Builder;->mCounts:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addMediaItems(Ljava/util/ArrayList;)Lcom/oculus/localmedia/FolderItem$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;)",
            "Lcom/oculus/localmedia/FolderItem$Builder;"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/localmedia/MediaItem;>;"
    iget-object v0, p0, Lcom/oculus/localmedia/FolderItem$Builder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 153
    return-object p0
.end method

.method public build()Lcom/oculus/localmedia/FolderItem;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 173
    iget-object v0, p0, Lcom/oculus/localmedia/FolderItem$Builder;->mPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 174
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v1, "FilePath is mandatory to build a folder item."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_0
    return-object v10

    :cond_0
    new-instance v1, Lcom/oculus/localmedia/FolderItem;

    iget-object v2, p0, Lcom/oculus/localmedia/FolderItem$Builder;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/localmedia/FolderItem$Builder;->mPath:Ljava/lang/String;

    iget-wide v4, p0, Lcom/oculus/localmedia/FolderItem$Builder;->mDateAdded:J

    iget-object v6, p0, Lcom/oculus/localmedia/FolderItem$Builder;->mItems:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/oculus/localmedia/FolderItem$Builder;->mCounts:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/oculus/localmedia/FolderItem$Builder;->mActorName:Ljava/lang/String;

    iget-object v9, p0, Lcom/oculus/localmedia/FolderItem$Builder;->mActorPicture:Ljava/lang/String;

    invoke-direct/range {v1 .. v10}, Lcom/oculus/localmedia/FolderItem;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/localmedia/FolderItem$1;)V

    move-object v10, v1

    goto :goto_0
.end method

.method public setActorName(Ljava/lang/String;)Lcom/oculus/localmedia/FolderItem$Builder;
    .locals 0
    .param p1, "actorName"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/oculus/localmedia/FolderItem$Builder;->mActorName:Ljava/lang/String;

    .line 164
    return-object p0
.end method

.method public setActorPicture(Ljava/lang/String;)Lcom/oculus/localmedia/FolderItem$Builder;
    .locals 0
    .param p1, "actorPicture"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/oculus/localmedia/FolderItem$Builder;->mActorPicture:Ljava/lang/String;

    .line 169
    return-object p0
.end method

.method public setCounts(Lcom/oculus/localmedia/MediaType;I)Lcom/oculus/localmedia/FolderItem$Builder;
    .locals 2
    .param p1, "type"    # Lcom/oculus/localmedia/MediaType;
    .param p2, "count"    # I

    .prologue
    .line 157
    new-instance v0, Lcom/oculus/localmedia/FolderMediaCount;

    invoke-direct {v0, p2, p2}, Lcom/oculus/localmedia/FolderMediaCount;-><init>(II)V

    .line 158
    .local v0, "newCount":Lcom/oculus/localmedia/FolderMediaCount;
    iget-object v1, p0, Lcom/oculus/localmedia/FolderItem$Builder;->mCounts:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-object p0
.end method

.method public setDateAdded(J)Lcom/oculus/localmedia/FolderItem$Builder;
    .locals 1
    .param p1, "dateAdded"    # J

    .prologue
    .line 147
    iput-wide p1, p0, Lcom/oculus/localmedia/FolderItem$Builder;->mDateAdded:J

    .line 148
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/oculus/localmedia/FolderItem$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/oculus/localmedia/FolderItem$Builder;->mName:Ljava/lang/String;

    .line 138
    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/oculus/localmedia/FolderItem$Builder;
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/oculus/localmedia/FolderItem$Builder;->mPath:Ljava/lang/String;

    .line 143
    return-object p0
.end method
