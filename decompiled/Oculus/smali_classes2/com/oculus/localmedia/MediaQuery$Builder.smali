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

.field private DeviceId:I

.field private IsSortAscending:Z

.field private MediaId:I

.field private Path:Ljava/lang/String;

.field private Size:I

.field private Sort:Lcom/oculus/localmedia/MediaSort;

.field private Types:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const v0, 0x7fffffff

    iput v0, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Size:I

    .line 64
    iput-object v2, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Cursor:Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/oculus/localmedia/MediaSort;->NAME:Lcom/oculus/localmedia/MediaSort;

    iput-object v0, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Sort:Lcom/oculus/localmedia/MediaSort;

    .line 66
    iput-boolean v1, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->IsSortAscending:Z

    .line 67
    iput-object v2, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Path:Ljava/lang/String;

    .line 68
    iput v1, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->DepthLevel:I

    .line 69
    iput v1, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->DeviceId:I

    .line 70
    iput v1, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->MediaId:I

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/oculus/localmedia/MediaQuery$Builder;
    .locals 4

    .prologue
    .line 79
    new-instance v0, Lcom/oculus/localmedia/MediaQuery$Builder;

    invoke-direct {v0}, Lcom/oculus/localmedia/MediaQuery$Builder;-><init>()V

    .line 81
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oculus/localmedia/MediaQueryUtils;->parseMediaTypes(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Types:I

    .line 83
    const-string v2, "device"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->DeviceId:I

    .line 84
    const-string v2, "path"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Path:Ljava/lang/String;

    .line 85
    const-string v2, "depth"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->DepthLevel:I

    .line 86
    const-string v2, "size"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Size:I

    .line 87
    const-string v2, "index"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Cursor:Ljava/lang/String;

    .line 88
    const-string v2, "sort"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oculus/localmedia/MediaQueryUtils;->parseSortType(Ljava/lang/String;)Lcom/oculus/localmedia/MediaSort;

    move-result-object v2

    iput-object v2, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Sort:Lcom/oculus/localmedia/MediaSort;

    .line 89
    const-string v2, "order"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->IsSortAscending:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid query json : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromMedia(Lcom/oculus/localmedia/MediaType;I)Lcom/oculus/localmedia/MediaQuery$Builder;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Lcom/oculus/localmedia/MediaQuery$Builder;

    invoke-direct {v0}, Lcom/oculus/localmedia/MediaQuery$Builder;-><init>()V

    .line 115
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaType;->getValue()I

    move-result v1

    iput v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Types:I

    .line 116
    iput p1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->MediaId:I

    .line 117
    return-object v0
.end method

.method public static fromQuery(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaQuery$Builder;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Lcom/oculus/localmedia/MediaQuery$Builder;

    invoke-direct {v0}, Lcom/oculus/localmedia/MediaQuery$Builder;-><init>()V

    .line 128
    iget v1, p0, Lcom/oculus/localmedia/MediaQuery;->Types:I

    iput v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Types:I

    .line 129
    iget v1, p0, Lcom/oculus/localmedia/MediaQuery;->Size:I

    iput v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Size:I

    .line 130
    iget-object v1, p0, Lcom/oculus/localmedia/MediaQuery;->Cursor:Ljava/lang/String;

    iput-object v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Cursor:Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcom/oculus/localmedia/MediaQuery;->Sort:Lcom/oculus/localmedia/MediaSort;

    iput-object v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Sort:Lcom/oculus/localmedia/MediaSort;

    .line 132
    iget-boolean v1, p0, Lcom/oculus/localmedia/MediaQuery;->IsSortAscending:Z

    iput-boolean v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->IsSortAscending:Z

    .line 133
    iget-object v1, p0, Lcom/oculus/localmedia/MediaQuery;->Path:Ljava/lang/String;

    iput-object v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->Path:Ljava/lang/String;

    .line 134
    iget v1, p0, Lcom/oculus/localmedia/MediaQuery;->DepthLevel:I

    iput v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->DepthLevel:I

    .line 135
    iget v1, p0, Lcom/oculus/localmedia/MediaQuery;->DeviceId:I

    iput v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->DeviceId:I

    .line 136
    iget v1, p0, Lcom/oculus/localmedia/MediaQuery;->MediaId:I

    iput v1, v0, Lcom/oculus/localmedia/MediaQuery$Builder;->MediaId:I

    .line 137
    return-object v0
.end method


# virtual methods
.method public addType(Lcom/oculus/localmedia/MediaType;)Lcom/oculus/localmedia/MediaQuery$Builder;
    .locals 2

    .prologue
    .line 146
    iget v0, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Types:I

    invoke-virtual {p1}, Lcom/oculus/localmedia/MediaType;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Types:I

    .line 147
    return-object p0
.end method

.method public build()Lcom/oculus/localmedia/MediaQuery;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 227
    iget v0, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Types:I

    if-nez v0, :cond_0

    .line 228
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v1, "Media Query need to contain at least one type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_0
    return-object v10

    .line 231
    :cond_0
    iget v0, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Size:I

    if-gtz v0, :cond_1

    .line 232
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Size:I

    .line 234
    :cond_1
    new-instance v0, Lcom/oculus/localmedia/MediaQuery;

    iget v1, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Types:I

    iget-object v2, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Path:Ljava/lang/String;

    iget v3, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Size:I

    iget-object v4, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Cursor:Ljava/lang/String;

    iget-object v5, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Sort:Lcom/oculus/localmedia/MediaSort;

    iget-boolean v6, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->IsSortAscending:Z

    iget v7, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->DepthLevel:I

    iget v8, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->MediaId:I

    iget v9, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->DeviceId:I

    invoke-direct/range {v0 .. v10}, Lcom/oculus/localmedia/MediaQuery;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/oculus/localmedia/MediaSort;ZIIILcom/oculus/localmedia/MediaQuery$1;)V

    move-object v10, v0

    goto :goto_0
.end method

.method public setCursor(Ljava/lang/String;)Lcom/oculus/localmedia/MediaQuery$Builder;
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Cursor:Ljava/lang/String;

    .line 168
    return-object p0
.end method

.method public setDepthLevel(I)Lcom/oculus/localmedia/MediaQuery$Builder;
    .locals 0

    .prologue
    .line 219
    iput p1, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->DepthLevel:I

    .line 220
    return-object p0
.end method

.method public setIsSortAscending(Z)Lcom/oculus/localmedia/MediaQuery$Builder;
    .locals 0

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->IsSortAscending:Z

    .line 189
    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/oculus/localmedia/MediaQuery$Builder;
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Path:Ljava/lang/String;

    .line 205
    return-object p0
.end method

.method public setSize(I)Lcom/oculus/localmedia/MediaQuery$Builder;
    .locals 0

    .prologue
    .line 156
    iput p1, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Size:I

    .line 157
    return-object p0
.end method

.method public setSort(Lcom/oculus/localmedia/MediaSort;)Lcom/oculus/localmedia/MediaQuery$Builder;
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/oculus/localmedia/MediaQuery$Builder;->Sort:Lcom/oculus/localmedia/MediaSort;

    .line 178
    return-object p0
.end method
