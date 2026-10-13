.class public Lcom/oculus/localmedia/MediaQuery;
.super Ljava/lang/Object;
.source "MediaQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/localmedia/MediaQuery$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_PAGE_SIZE:I = 0x3e8


# instance fields
.field public Cursor:Ljava/lang/String;

.field public DepthLevel:I

.field public DepthOriginalLevel:I

.field public DepthSize:I

.field public DeviceId:I

.field public ExternalHost:Ljava/lang/String;

.field public Filters:Ljava/lang/String;

.field public IsSortAscending:Z

.field public MediaId:Ljava/lang/String;

.field public Path:Ljava/lang/String;

.field public QueryId:Ljava/lang/String;

.field public Size:I

.field public Sort:Lcom/oculus/localmedia/MediaSort;

.field public Types:I


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lcom/oculus/localmedia/MediaSort;ZLjava/lang/String;IIILjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "queryId"    # Ljava/lang/String;
    .param p2, "types"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "size"    # I
    .param p5, "cursor"    # Ljava/lang/String;
    .param p6, "sort"    # Lcom/oculus/localmedia/MediaSort;
    .param p7, "isSortAscending"    # Z
    .param p8, "filters"    # Ljava/lang/String;
    .param p9, "depth"    # I
    .param p10, "depthOriginal"    # I
    .param p11, "depthSize"    # I
    .param p12, "mediaId"    # Ljava/lang/String;
    .param p13, "deviceId"    # I
    .param p14, "externalHost"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/oculus/localmedia/MediaQuery;->QueryId:Ljava/lang/String;

    .line 52
    iput p2, p0, Lcom/oculus/localmedia/MediaQuery;->Types:I

    .line 53
    iput p4, p0, Lcom/oculus/localmedia/MediaQuery;->Size:I

    .line 54
    iput-object p5, p0, Lcom/oculus/localmedia/MediaQuery;->Cursor:Ljava/lang/String;

    .line 55
    iput-object p6, p0, Lcom/oculus/localmedia/MediaQuery;->Sort:Lcom/oculus/localmedia/MediaSort;

    .line 56
    iput-boolean p7, p0, Lcom/oculus/localmedia/MediaQuery;->IsSortAscending:Z

    .line 57
    iput-object p8, p0, Lcom/oculus/localmedia/MediaQuery;->Filters:Ljava/lang/String;

    .line 58
    iput p9, p0, Lcom/oculus/localmedia/MediaQuery;->DepthLevel:I

    .line 59
    iput p10, p0, Lcom/oculus/localmedia/MediaQuery;->DepthOriginalLevel:I

    .line 60
    iput p11, p0, Lcom/oculus/localmedia/MediaQuery;->DepthSize:I

    .line 61
    iput p13, p0, Lcom/oculus/localmedia/MediaQuery;->DeviceId:I

    .line 62
    iput-object p12, p0, Lcom/oculus/localmedia/MediaQuery;->MediaId:Ljava/lang/String;

    .line 63
    iput-object p14, p0, Lcom/oculus/localmedia/MediaQuery;->ExternalHost:Ljava/lang/String;

    .line 64
    iget v0, p0, Lcom/oculus/localmedia/MediaQuery;->DeviceId:I

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/oculus/localmedia/MediaQueryUtils;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .end local p3    # "path":Ljava/lang/String;
    :cond_0
    iput-object p3, p0, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lcom/oculus/localmedia/MediaSort;ZLjava/lang/String;IIILjava/lang/String;ILjava/lang/String;Lcom/oculus/localmedia/MediaQuery$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Lcom/oculus/localmedia/MediaSort;
    .param p7, "x6"    # Z
    .param p8, "x7"    # Ljava/lang/String;
    .param p9, "x8"    # I
    .param p10, "x9"    # I
    .param p11, "x10"    # I
    .param p12, "x11"    # Ljava/lang/String;
    .param p13, "x12"    # I
    .param p14, "x13"    # Ljava/lang/String;
    .param p15, "x14"    # Lcom/oculus/localmedia/MediaQuery$1;

    .prologue
    .line 17
    invoke-direct/range {p0 .. p14}, Lcom/oculus/localmedia/MediaQuery;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lcom/oculus/localmedia/MediaSort;ZLjava/lang/String;IIILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static builder()Lcom/oculus/localmedia/MediaQuery$Builder;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/oculus/localmedia/MediaQuery$Builder;

    invoke-direct {v0}, Lcom/oculus/localmedia/MediaQuery$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public isSmartQuery()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/localmedia/MediaSmartQueryUtils;->getSmartQueryType(Ljava/lang/String;)Lcom/oculus/localmedia/MediaSmartQueryType;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 72
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 74
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    iget-object v2, p0, Lcom/oculus/localmedia/MediaQuery;->QueryId:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "queryId"

    iget-object v3, p0, Lcom/oculus/localmedia/MediaQuery;->QueryId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    :cond_0
    const-string v2, "type"

    iget v3, p0, Lcom/oculus/localmedia/MediaQuery;->Types:I

    invoke-static {v3}, Lcom/oculus/localmedia/MediaQueryUtils;->serializeMediaTypes(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v2, "device"

    iget v3, p0, Lcom/oculus/localmedia/MediaQuery;->DeviceId:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    const-string v2, "depth"

    iget-object v3, p0, Lcom/oculus/localmedia/MediaQuery;->QueryId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v2, "size"

    iget v3, p0, Lcom/oculus/localmedia/MediaQuery;->Size:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 79
    iget-object v2, p0, Lcom/oculus/localmedia/MediaQuery;->Cursor:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, "index"

    iget-object v3, p0, Lcom/oculus/localmedia/MediaQuery;->Cursor:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    :cond_1
    const-string v2, "sort"

    iget-object v3, p0, Lcom/oculus/localmedia/MediaQuery;->Sort:Lcom/oculus/localmedia/MediaSort;

    invoke-virtual {v3}, Lcom/oculus/localmedia/MediaSort;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v2, "order"

    iget-boolean v3, p0, Lcom/oculus/localmedia/MediaQuery;->IsSortAscending:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 82
    iget-object v2, p0, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, "path"

    iget-object v3, p0, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    :cond_2
    iget v2, p0, Lcom/oculus/localmedia/MediaQuery;->DepthSize:I

    if-lez v2, :cond_3

    const-string v2, "depthsize"

    iget v3, p0, Lcom/oculus/localmedia/MediaQuery;->DepthSize:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    :cond_3
    iget-object v2, p0, Lcom/oculus/localmedia/MediaQuery;->Filters:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v2, "filters"

    iget-object v3, p0, Lcom/oculus/localmedia/MediaQuery;->Filters:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    :cond_4
    iget-object v2, p0, Lcom/oculus/localmedia/MediaQuery;->MediaId:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v2, "mediaId"

    iget-object v3, p0, Lcom/oculus/localmedia/MediaQuery;->MediaId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_5
    :goto_0
    return-object v1

    .line 86
    .restart local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not serialize to JSON query"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaQuery;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
