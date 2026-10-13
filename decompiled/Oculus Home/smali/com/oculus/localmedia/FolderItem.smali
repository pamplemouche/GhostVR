.class public Lcom/oculus/localmedia/FolderItem;
.super Ljava/lang/Object;
.source "FolderItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/localmedia/FolderItem$Builder;
    }
.end annotation


# static fields
.field private static DATE_ADDED_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/oculus/localmedia/FolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private static NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/oculus/localmedia/FolderItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private folders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/localmedia/FolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;"
        }
    .end annotation
.end field

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

.field private mIsPrepared:Z

.field private mName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/oculus/localmedia/FolderItem$1;

    invoke-direct {v0}, Lcom/oculus/localmedia/FolderItem$1;-><init>()V

    sput-object v0, Lcom/oculus/localmedia/FolderItem;->DATE_ADDED_COMPARATOR:Ljava/util/Comparator;

    .line 32
    new-instance v0, Lcom/oculus/localmedia/FolderItem$2;

    invoke-direct {v0}, Lcom/oculus/localmedia/FolderItem$2;-><init>()V

    sput-object v0, Lcom/oculus/localmedia/FolderItem;->NAME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "dateAdded"    # J
    .param p7, "actorName"    # Ljava/lang/String;
    .param p8, "actorPicture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/oculus/localmedia/MediaType;",
            "Lcom/oculus/localmedia/FolderMediaCount;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p5, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/localmedia/MediaItem;>;"
    .local p6, "counts":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/oculus/localmedia/MediaType;Lcom/oculus/localmedia/FolderMediaCount;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/oculus/localmedia/FolderItem;->mName:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/oculus/localmedia/FolderItem;->mPath:Ljava/lang/String;

    .line 60
    iput-wide p3, p0, Lcom/oculus/localmedia/FolderItem;->mDateAdded:J

    .line 61
    iput-object p5, p0, Lcom/oculus/localmedia/FolderItem;->items:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/localmedia/FolderItem;->folders:Ljava/util/ArrayList;

    .line 63
    iput-object p6, p0, Lcom/oculus/localmedia/FolderItem;->mCounts:Ljava/util/HashMap;

    .line 64
    iput-object p7, p0, Lcom/oculus/localmedia/FolderItem;->mActorName:Ljava/lang/String;

    .line 65
    iput-object p8, p0, Lcom/oculus/localmedia/FolderItem;->mActorPicture:Ljava/lang/String;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/localmedia/FolderItem$1;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .param p5, "x3"    # Ljava/util/ArrayList;
    .param p6, "x4"    # Ljava/util/HashMap;
    .param p7, "x5"    # Ljava/lang/String;
    .param p8, "x6"    # Ljava/lang/String;
    .param p9, "x7"    # Lcom/oculus/localmedia/FolderItem$1;

    .prologue
    .line 24
    invoke-direct/range {p0 .. p8}, Lcom/oculus/localmedia/FolderItem;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/localmedia/FolderItem;)J
    .locals 2
    .param p0, "x0"    # Lcom/oculus/localmedia/FolderItem;

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/oculus/localmedia/FolderItem;->mDateAdded:J

    return-wide v0
.end method

.method public static builder()Lcom/oculus/localmedia/FolderItem$Builder;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/oculus/localmedia/FolderItem$Builder;

    invoke-direct {v0}, Lcom/oculus/localmedia/FolderItem$Builder;-><init>()V

    return-object v0
.end method

.method public static sort(Ljava/util/List;Lcom/oculus/localmedia/MediaSort;Z)V
    .locals 3
    .param p1, "sortType"    # Lcom/oculus/localmedia/MediaSort;
    .param p2, "ascendingOrder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/localmedia/FolderItem;",
            ">;",
            "Lcom/oculus/localmedia/MediaSort;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/localmedia/FolderItem;>;"
    sget-object v1, Lcom/oculus/localmedia/FolderItem$3;->$SwitchMap$com$oculus$localmedia$MediaSort:[I

    invoke-virtual {p1}, Lcom/oculus/localmedia/MediaSort;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 224
    sget-object v0, Lcom/oculus/localmedia/FolderItem;->NAME_COMPARATOR:Ljava/util/Comparator;

    .line 227
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/oculus/localmedia/FolderItem;>;"
    :goto_0
    if-eqz p2, :cond_0

    .line 228
    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 230
    :cond_0
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 231
    return-void

    .line 221
    .end local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/oculus/localmedia/FolderItem;>;"
    :pswitch_0
    sget-object v0, Lcom/oculus/localmedia/FolderItem;->DATE_ADDED_COMPARATOR:Ljava/util/Comparator;

    .line 222
    .restart local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/oculus/localmedia/FolderItem;>;"
    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oculus/localmedia/FolderItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oculus/localmedia/FolderItem;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public prepare(Lcom/oculus/localmedia/LocalMediaManager;Lcom/oculus/localmedia/MediaQuery;)V
    .locals 7
    .param p1, "localMediaManager"    # Lcom/oculus/localmedia/LocalMediaManager;
    .param p2, "query"    # Lcom/oculus/localmedia/MediaQuery;

    .prologue
    .line 182
    iget-boolean v4, p0, Lcom/oculus/localmedia/FolderItem;->mIsPrepared:Z

    if-eqz v4, :cond_1

    .line 207
    :cond_0
    return-void

    .line 185
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/oculus/localmedia/FolderItem;->mIsPrepared:Z

    .line 188
    invoke-static {}, Lcom/oculus/localmedia/FolderMediaCountRegistry;->getSingleton()Lcom/oculus/localmedia/FolderMediaCountRegistry;

    move-result-object v4

    iget-object v5, p0, Lcom/oculus/localmedia/FolderItem;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/oculus/localmedia/FolderMediaCountRegistry;->get(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/oculus/localmedia/FolderItem;->mCounts:Ljava/util/HashMap;

    .line 191
    invoke-static {}, Lcom/oculus/localmedia/MediaQuery;->builder()Lcom/oculus/localmedia/MediaQuery$Builder;

    .line 192
    invoke-static {p2}, Lcom/oculus/localmedia/MediaQuery$Builder;->fromQuery(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaQuery$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/oculus/localmedia/FolderItem;->mPath:Ljava/lang/String;

    .line 193
    invoke-virtual {v4, v5}, Lcom/oculus/localmedia/MediaQuery$Builder;->recurse(Ljava/lang/String;)Lcom/oculus/localmedia/MediaQuery$Builder;

    move-result-object v4

    .line 194
    invoke-virtual {v4}, Lcom/oculus/localmedia/MediaQuery$Builder;->build()Lcom/oculus/localmedia/MediaQuery;

    move-result-object v2

    .line 195
    .local v2, "subQuery":Lcom/oculus/localmedia/MediaQuery;
    invoke-virtual {p1, v2}, Lcom/oculus/localmedia/LocalMediaManager;->queryMedia(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaResponse;

    move-result-object v3

    .line 196
    .local v3, "subResponse":Lcom/oculus/localmedia/MediaResponse;
    if-eqz v3, :cond_0

    .line 197
    invoke-virtual {v3}, Lcom/oculus/localmedia/MediaResponse;->getItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/localmedia/MediaItem;

    .line 198
    .local v1, "subItem":Lcom/oculus/localmedia/MediaItem;
    iget-object v5, p0, Lcom/oculus/localmedia/FolderItem;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    .end local v1    # "subItem":Lcom/oculus/localmedia/MediaItem;
    :cond_2
    invoke-virtual {v3}, Lcom/oculus/localmedia/MediaResponse;->getFolders()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/FolderItem;

    .line 201
    .local v0, "subFolder":Lcom/oculus/localmedia/FolderItem;
    const-string v5, ".."

    invoke-virtual {v0}, Lcom/oculus/localmedia/FolderItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 204
    iget-object v5, p0, Lcom/oculus/localmedia/FolderItem;->folders:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 14

    .prologue
    .line 81
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 83
    .local v8, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v10, "name"

    iget-object v11, p0, Lcom/oculus/localmedia/FolderItem;->mName:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v10, "path"

    iget-object v11, p0, Lcom/oculus/localmedia/FolderItem;->mPath:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v10, "type"

    sget-object v11, Lcom/oculus/localmedia/MediaType;->FOLDER:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v11}, Lcom/oculus/localmedia/MediaType;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v10, "actorName"

    iget-object v11, p0, Lcom/oculus/localmedia/FolderItem;->mActorName:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v10, "actorPicture"

    iget-object v11, p0, Lcom/oculus/localmedia/FolderItem;->mActorPicture:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v10, "timeStamp"

    iget-wide v12, p0, Lcom/oculus/localmedia/FolderItem;->mDateAdded:J

    invoke-virtual {v8, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 90
    iget-object v10, p0, Lcom/oculus/localmedia/FolderItem;->items:Ljava/util/ArrayList;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/oculus/localmedia/FolderItem;->items:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 91
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 92
    .local v7, "itemsArray":Lorg/json/JSONArray;
    iget-object v10, p0, Lcom/oculus/localmedia/FolderItem;->items:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oculus/localmedia/MediaItem;

    .line 93
    .local v5, "item":Lcom/oculus/localmedia/MediaItem;
    invoke-virtual {v5}, Lcom/oculus/localmedia/MediaItem;->toJSON()Lorg/json/JSONObject;

    move-result-object v6

    .line 94
    .local v6, "itemJSON":Lorg/json/JSONObject;
    if-eqz v6, :cond_0

    .line 95
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    .end local v5    # "item":Lcom/oculus/localmedia/MediaItem;
    .end local v6    # "itemJSON":Lorg/json/JSONObject;
    .end local v7    # "itemsArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Lorg/json/JSONException;
    sget-object v10, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not serialize to JSON media with path : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/oculus/localmedia/FolderItem;->mPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v8, 0x0

    .line 123
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v8    # "json":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    return-object v8

    .line 98
    .restart local v7    # "itemsArray":Lorg/json/JSONArray;
    .restart local v8    # "json":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    const-string v10, "items"

    invoke-virtual {v8, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    .end local v7    # "itemsArray":Lorg/json/JSONArray;
    :cond_3
    iget-object v10, p0, Lcom/oculus/localmedia/FolderItem;->folders:Ljava/util/ArrayList;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/oculus/localmedia/FolderItem;->folders:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_6

    .line 102
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 103
    .local v4, "foldersArray":Lorg/json/JSONArray;
    iget-object v10, p0, Lcom/oculus/localmedia/FolderItem;->folders:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/localmedia/FolderItem;

    .line 104
    .local v2, "folder":Lcom/oculus/localmedia/FolderItem;
    invoke-virtual {v2}, Lcom/oculus/localmedia/FolderItem;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    .line 105
    .local v3, "folderJSON":Lorg/json/JSONObject;
    if-eqz v3, :cond_4

    .line 106
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 109
    .end local v2    # "folder":Lcom/oculus/localmedia/FolderItem;
    .end local v3    # "folderJSON":Lorg/json/JSONObject;
    :cond_5
    const-string v10, "folders"

    invoke-virtual {v8, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    .end local v4    # "foldersArray":Lorg/json/JSONArray;
    :cond_6
    iget-object v10, p0, Lcom/oculus/localmedia/FolderItem;->mCounts:Ljava/util/HashMap;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/oculus/localmedia/FolderItem;->mCounts:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 113
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 114
    .local v0, "countsObject":Lorg/json/JSONObject;
    iget-object v10, p0, Lcom/oculus/localmedia/FolderItem;->mCounts:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oculus/localmedia/MediaType;

    .line 115
    .local v9, "t":Lcom/oculus/localmedia/MediaType;
    invoke-virtual {v9}, Lcom/oculus/localmedia/MediaType;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v10, p0, Lcom/oculus/localmedia/FolderItem;->mCounts:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oculus/localmedia/FolderMediaCount;

    invoke-virtual {v10}, Lcom/oculus/localmedia/FolderMediaCount;->toJSON()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v0, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 117
    .end local v9    # "t":Lcom/oculus/localmedia/MediaType;
    :cond_7
    const-string v10, "counts"

    invoke-virtual {v8, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
