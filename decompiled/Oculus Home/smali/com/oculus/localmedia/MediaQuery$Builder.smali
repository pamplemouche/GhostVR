.class public Lcom/oculus/localmedia/MediaQuery$Builder;
.super Ljava/lang/Object;
.source "MediaQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/localmedia/MediaQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private Cursor:Ljava/lang/String;

.field private DepthLevel:I

.field private DepthOriginalLevel:I

.field private DepthSize:I

.field private DeviceId:I

.field private ExternalHost:Ljava/lang/String;

.field private Filters:Ljava/lang/String;

.field private IsSortAscending:Z

.field private MediaId:Ljava/lang/String;

.field private Path:Ljava/lang/String;

.field private QueryId:Ljava/lang/String;

.field private Size:I

.field private Sort:Lcom/oculus/localmedia/MediaSort;

.field private Types:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->QueryId:Ljava/lang/String;

    .line 106
    const v0, 0x7fffffff

    iput v0, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Size:I

    .line 107
    iput-object v2, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Cursor:Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/oculus/localmedia/MediaSort;->NAME:Lcom/oculus/localmedia/MediaSort;

    iput-object v0, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Sort:Lcom/oculus/localmedia/MediaSort;

    .line 109
    iput-boolean v1, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->IsSortAscending:Z

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Filters:Ljava/lang/String;

    .line 111
    iput-object v2, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Path:Ljava/lang/String;

    .line 112
    iput v1, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->DepthLevel:I

    .line 113
    iput v1, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->DepthOriginalLevel:I

    .line 114
    iput v1, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->DepthSize:I

    .line 115
    iput v1, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->DeviceId:I

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->MediaId:Ljava/lang/String;

    .line 117
    iput-object v2, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->ExternalHost:Ljava/lang/String;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/oculus/localmedia/MediaQuery$Builder;
    .locals 6
    .param p0, "jsonQuery"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v0, Lcom/oculus/localmedia/MediaQuery$Builder;

    invoke-direct {v0}, Lcom/oculus/localmedia/MediaQuery$Builder;-><init>()V

    .line 128
    .local v0, "builder":Lcom/oculus/localmedia/MediaQuery$Builder;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 129
    .local v2, "queryObject":Lorg/json/JSONObject;
    const-string v3, "queryId"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->QueryId:Ljava/lang/String;

    .line 130
    const-string v3, "type"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oculus/localmedia/MediaQueryUtils;->parseMediaTypes(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Types:I

    .line 131
    const-string v3, "device"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->DeviceId:I

    .line 132
    const-string v3, "path"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Path:Ljava/lang/String;

    .line 133
    const-string v3, "depth"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->DepthLevel:I

    .line 134
    const-string v3, "depthsize"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->DepthSize:I

    .line 135
    const-string v3, "size"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Size:I

    .line 136
    const-string v3, "index"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Cursor:Ljava/lang/String;

    .line 137
    const-string v3, "sort"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oculus/localmedia/MediaQueryUtils;->parseSortType(Ljava/lang/String;)Lcom/oculus/localmedia/MediaSort;

    move-result-object v3

    iput-object v3, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Sort:Lcom/oculus/localmedia/MediaSort;

    .line 138
    const-string v3, "order"

    const-string v4, "asc"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->IsSortAscending:Z

    .line 139
    const-string v3, "filters"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Filters:Ljava/lang/String;

    .line 140
    const-string v3, "mediaId"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->MediaId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    return-object v0

    .line 141
    .end local v2    # "queryObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid query json : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static fromMedia(Lcom/oculus/localmedia/MediaType;Ljava/lang/String;)Lcom/oculus/localmedia/MediaQuery$Builder;
    .locals 2
    .param p0, "mediaType"    # Lcom/oculus/localmedia/MediaType;
    .param p1, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 165
    new-instance v0, Lcom/oculus/localmedia/MediaQuery$Builder;

    invoke-direct {v0}, Lcom/oculus/localmedia/MediaQuery$Builder;-><init>()V

    .line 166
    .local v0, "builder":Lcom/oculus/localmedia/MediaQuery$Builder;
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaType;->getValue()I

    move-result v1

    iput v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Types:I

    .line 167
    iput-object p1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->MediaId:Ljava/lang/String;

    .line 168
    return-object v0
.end method

.method public static fromQuery(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaQuery$Builder;
    .locals 2
    .param p0, "query"    # Lcom/oculus/localmedia/MediaQuery;

    .prologue
    .line 177
    new-instance v0, Lcom/oculus/localmedia/MediaQuery$Builder;

    invoke-direct {v0}, Lcom/oculus/localmedia/MediaQuery$Builder;-><init>()V

    .line 178
    .local v0, "builder":Lcom/oculus/localmedia/MediaQuery$Builder;
    iget v1, p0, Lcom/oculus/localmedia/MediaQuery;->Types:I

    iput v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Types:I

    .line 179
    iget v1, p0, Lcom/oculus/localmedia/MediaQuery;->Size:I

    iput v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Size:I

    .line 180
    iget-object v1, p0, Lcom/oculus/localmedia/MediaQuery;->Cursor:Ljava/lang/String;

    iput-object v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Cursor:Ljava/lang/String;

    .line 181
    iget-object v1, p0, Lcom/oculus/localmedia/MediaQuery;->Sort:Lcom/oculus/localmedia/MediaSort;

    iput-object v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Sort:Lcom/oculus/localmedia/MediaSort;

    .line 182
    iget-boolean v1, p0, Lcom/oculus/localmedia/MediaQuery;->IsSortAscending:Z

    iput-boolean v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->IsSortAscending:Z

    .line 183
    iget-object v1, p0, Lcom/oculus/localmedia/MediaQuery;->Filters:Ljava/lang/String;

    iput-object v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Filters:Ljava/lang/String;

    .line 184
    iget-object v1, p0, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    iput-object v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Path:Ljava/lang/String;

    .line 185
    iget v1, p0, Lcom/oculus/localmedia/MediaQuery;->DepthLevel:I

    iput v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->DepthLevel:I

    .line 186
    iget v1, p0, Lcom/oculus/localmedia/MediaQuery;->DepthOriginalLevel:I

    iput v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->DepthOriginalLevel:I

    .line 187
    iget v1, p0, Lcom/oculus/localmedia/MediaQuery;->DepthSize:I

    iput v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->DepthSize:I

    .line 188
    iget v1, p0, Lcom/oculus/localmedia/MediaQuery;->DeviceId:I

    iput v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->DeviceId:I

    .line 189
    iget-object v1, p0, Lcom/oculus/localmedia/MediaQuery;->MediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->MediaId:Ljava/lang/String;

    .line 190
    return-object v0
.end method

.method public static fromType(Lcom/oculus/localmedia/MediaType;)Lcom/oculus/localmedia/MediaQuery$Builder;
    .locals 2
    .param p0, "mediaType"    # Lcom/oculus/localmedia/MediaType;

    .prologue
    .line 153
    new-instance v0, Lcom/oculus/localmedia/MediaQuery$Builder;

    invoke-direct {v0}, Lcom/oculus/localmedia/MediaQuery$Builder;-><init>()V

    .line 154
    .local v0, "builder":Lcom/oculus/localmedia/MediaQuery$Builder;
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaType;->getValue()I

    move-result v1

    iput v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Types:I

    .line 155
    return-object v0
.end method


# virtual methods
.method public addType(Lcom/oculus/localmedia/MediaType;)Lcom/oculus/localmedia/MediaQuery$Builder;
    .locals 2
    .param p1, "mediaType"    # Lcom/oculus/localmedia/MediaType;

    .prologue
    .line 199
    iget v0, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Types:I

    invoke-virtual {p1}, Lcom/oculus/localmedia/MediaType;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Types:I

    .line 200
    return-object p0
.end method

.method public build()Lcom/oculus/localmedia/MediaQuery;
    .locals 17

    .prologue
    .line 290
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Types:I

    if-nez v1, :cond_0

    .line 291
    sget-object v1, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v2, "Media Query need to contain at least one type"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v1, 0x0

    .line 300
    :goto_0
    return-object v1

    .line 294
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Size:I

    if-gtz v1, :cond_1

    .line 295
    const/16 v1, 0x3e8

    move-object/from16 v0, p0

    iput v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Size:I

    .line 297
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->DepthLevel:I

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->DepthOriginalLevel:I

    if-nez v1, :cond_2

    .line 298
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->DepthLevel:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->DepthOriginalLevel:I

    .line 300
    :cond_2
    new-instance v1, Lcom/oculus/localmedia/MediaQuery;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->QueryId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Types:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Path:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Size:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Cursor:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Sort:Lcom/oculus/localmedia/MediaSort;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->IsSortAscending:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Filters:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->DepthLevel:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->DepthOriginalLevel:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->DepthSize:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->MediaId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->DeviceId:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->ExternalHost:Ljava/lang/String;

    const/16 v16, 0x0

    invoke-direct/range {v1 .. v16}, Lcom/oculus/localmedia/MediaQuery;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lcom/oculus/localmedia/MediaSort;ZLjava/lang/String;IIILjava/lang/String;ILjava/lang/String;Lcom/oculus/localmedia/MediaQuery$1;)V

    goto :goto_0
.end method

.method public recurse(Ljava/lang/String;)Lcom/oculus/localmedia/MediaQuery$Builder;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Path:Ljava/lang/String;

    .line 272
    iget v0, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->DepthLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->DepthLevel:I

    .line 273
    iget v0, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->DepthLevel:I

    if-nez v0, :cond_1

    .line 277
    iget v0, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Types:I

    sget-object v1, Lcom/oculus/localmedia/MediaType;->FOLDER:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v1}, Lcom/oculus/localmedia/MediaType;->getValue()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Types:I

    .line 278
    iget v0, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Types:I

    if-nez v0, :cond_0

    .line 279
    sget-object v0, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaType;->getValue()I

    move-result v0

    sget-object v1, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v1}, Lcom/oculus/localmedia/MediaType;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Types:I

    .line 281
    :cond_0
    iget v0, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->DepthSize:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->DepthSize:I

    :goto_0
    iput v0, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Size:I

    .line 283
    :cond_1
    return-object p0

    .line 281
    :cond_2
    iget v0, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Size:I

    goto :goto_0
.end method

.method public setCursor(Ljava/lang/String;)Lcom/oculus/localmedia/MediaQuery$Builder;
    .locals 0
    .param p1, "cursor"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Cursor:Ljava/lang/String;

    .line 221
    return-object p0
.end method

.method public setExternalHost(Ljava/lang/String;)Lcom/oculus/localmedia/MediaQuery$Builder;
    .locals 0
    .param p1, "externalHost"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->ExternalHost:Ljava/lang/String;

    .line 262
    return-object p0
.end method

.method public setFilters(Ljava/lang/String;)Lcom/oculus/localmedia/MediaQuery$Builder;
    .locals 0
    .param p1, "filters"    # Ljava/lang/String;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Filters:Ljava/lang/String;

    .line 252
    return-object p0
.end method

.method public setIsSortAscending(Z)Lcom/oculus/localmedia/MediaQuery$Builder;
    .locals 0
    .param p1, "isSortAscending"    # Z

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->IsSortAscending:Z

    .line 242
    return-object p0
.end method

.method public setSize(I)Lcom/oculus/localmedia/MediaQuery$Builder;
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 209
    iput p1, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Size:I

    .line 210
    return-object p0
.end method

.method public setSort(Lcom/oculus/localmedia/MediaSort;)Lcom/oculus/localmedia/MediaQuery$Builder;
    .locals 0
    .param p1, "sort"    # Lcom/oculus/localmedia/MediaSort;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Sort:Lcom/oculus/localmedia/MediaSort;

    .line 231
    return-object p0
.end method
