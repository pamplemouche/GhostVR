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

.field private mDateAdded:J

.field private mIsPrepared:Z

.field private mName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/oculus/localmedia/FolderItem$1;

    invoke-direct {v0}, Lcom/oculus/localmedia/FolderItem$1;-><init>()V

    sput-object v0, Lcom/oculus/localmedia/FolderItem;->DATE_ADDED_COMPARATOR:Ljava/util/Comparator;

    .line 30
    new-instance v0, Lcom/oculus/localmedia/FolderItem$2;

    invoke-direct {v0}, Lcom/oculus/localmedia/FolderItem$2;-><init>()V

    sput-object v0, Lcom/oculus/localmedia/FolderItem;->NAME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/oculus/localmedia/FolderItem;->mName:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/oculus/localmedia/FolderItem;->mPath:Ljava/lang/String;

    .line 47
    iput-wide p3, p0, Lcom/oculus/localmedia/FolderItem;->mDateAdded:J

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/localmedia/FolderItem;->items:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/localmedia/FolderItem;->folders:Ljava/util/ArrayList;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/oculus/localmedia/FolderItem$1;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oculus/localmedia/FolderItem;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/localmedia/FolderItem;)J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/oculus/localmedia/FolderItem;->mDateAdded:J

    return-wide v0
.end method

.method public static builder()Lcom/oculus/localmedia/FolderItem$Builder;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/oculus/localmedia/FolderItem$Builder;

    invoke-direct {v0}, Lcom/oculus/localmedia/FolderItem$Builder;-><init>()V

    return-object v0
.end method

.method public static sort(Ljava/util/List;Lcom/oculus/localmedia/MediaSort;Z)V
    .locals 2
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
    .line 160
    sget-object v0, Lcom/oculus/localmedia/FolderItem$3;->$SwitchMap$com$oculus$localmedia$MediaSort:[I

    invoke-virtual {p1}, Lcom/oculus/localmedia/MediaSort;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 165
    sget-object v0, Lcom/oculus/localmedia/FolderItem;->NAME_COMPARATOR:Ljava/util/Comparator;

    .line 168
    :goto_0
    if-nez p2, :cond_0

    .line 169
    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 171
    :cond_0
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 172
    return-void

    .line 162
    :pswitch_0
    sget-object v0, Lcom/oculus/localmedia/FolderItem;->DATE_ADDED_COMPARATOR:Ljava/util/Comparator;

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/oculus/localmedia/FolderItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public prepare(Lcom/oculus/localmedia/LocalMediaManager;Lcom/oculus/localmedia/MediaQuery;)V
    .locals 4

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/oculus/localmedia/FolderItem;->mIsPrepared:Z

    if-eqz v0, :cond_1

    .line 148
    :cond_0
    return-void

    .line 129
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/localmedia/FolderItem;->mIsPrepared:Z

    .line 131
    invoke-static {}, Lcom/oculus/localmedia/MediaQuery;->builder()Lcom/oculus/localmedia/MediaQuery$Builder;

    .line 132
    invoke-static {p2}, Lcom/oculus/localmedia/MediaQuery$Builder;->fromQuery(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaQuery$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/localmedia/FolderItem;->mPath:Ljava/lang/String;

    .line 133
    invoke-virtual {v0, v1}, Lcom/oculus/localmedia/MediaQuery$Builder;->setPath(Ljava/lang/String;)Lcom/oculus/localmedia/MediaQuery$Builder;

    move-result-object v0

    iget v1, p2, Lcom/oculus/localmedia/MediaQuery;->DepthLevel:I

    add-int/lit8 v1, v1, -0x1

    .line 134
    invoke-virtual {v0, v1}, Lcom/oculus/localmedia/MediaQuery$Builder;->setDepthLevel(I)Lcom/oculus/localmedia/MediaQuery$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaQuery$Builder;->build()Lcom/oculus/localmedia/MediaQuery;

    move-result-object v0

    .line 136
    invoke-virtual {p1, v0}, Lcom/oculus/localmedia/LocalMediaManager;->queryMedia(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaResponse;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {v1}, Lcom/oculus/localmedia/MediaResponse;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/MediaItem;

    .line 139
    iget-object v3, p0, Lcom/oculus/localmedia/FolderItem;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {v1}, Lcom/oculus/localmedia/MediaResponse;->getFolders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/FolderItem;

    .line 142
    const-string v2, ".."

    invoke-virtual {v0}, Lcom/oculus/localmedia/FolderItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 145
    iget-object v2, p0, Lcom/oculus/localmedia/FolderItem;->folders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 65
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 67
    :try_start_0
    const-string v0, "name"

    iget-object v2, p0, Lcom/oculus/localmedia/FolderItem;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v0, "path"

    iget-object v2, p0, Lcom/oculus/localmedia/FolderItem;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v0, "type"

    const-string v2, "folder"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 72
    iget-object v0, p0, Lcom/oculus/localmedia/FolderItem;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/MediaItem;

    .line 73
    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaItem;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not serialize to JSON media with path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/localmedia/FolderItem;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_1
    return-object v0

    .line 78
    :cond_1
    :try_start_1
    const-string v0, "items"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 81
    iget-object v0, p0, Lcom/oculus/localmedia/FolderItem;->folders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/FolderItem;

    .line 82
    invoke-virtual {v0}, Lcom/oculus/localmedia/FolderItem;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 87
    :cond_3
    const-string v0, "folders"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 92
    goto :goto_1
.end method
