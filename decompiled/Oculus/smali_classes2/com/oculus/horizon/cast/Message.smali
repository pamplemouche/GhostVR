.class public Lcom/oculus/horizon/cast/Message;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/cast/Message$Type;,
        Lcom/oculus/horizon/cast/Message$ErrorCode;
    }
.end annotation


# static fields
.field static final DEFAULT_VIDEO_SPEC:Lcom/oculus/horizon/cast/VideoSpec;

.field private static final INVALID_MESSAGE:Lcom/oculus/horizon/cast/Message;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final mData:Ljava/lang/String;

.field public final mErrorCode:Lcom/oculus/horizon/cast/Message$ErrorCode;

.field public final mSessionId:Ljava/lang/String;

.field public final mSpec:Lcom/oculus/horizon/cast/VideoSpec;

.field public final mType:Lcom/oculus/horizon/cast/Message$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v2, 0x200

    .line 52
    const-class v0, Lcom/oculus/horizon/cast/Message;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/cast/Message;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/oculus/horizon/cast/VideoSpec;

    const/16 v1, 0x1e

    invoke-direct {v0, v2, v2, v1}, Lcom/oculus/horizon/cast/VideoSpec;-><init>(III)V

    sput-object v0, Lcom/oculus/horizon/cast/Message;->DEFAULT_VIDEO_SPEC:Lcom/oculus/horizon/cast/VideoSpec;

    .line 58
    new-instance v0, Lcom/oculus/horizon/cast/Message;

    const-string v1, ""

    sget-object v2, Lcom/oculus/horizon/cast/Message$Type;->ERROR:Lcom/oculus/horizon/cast/Message$Type;

    const-string v3, "Invalid Message type"

    sget-object v4, Lcom/oculus/horizon/cast/Message$ErrorCode;->UNKNOWN_MESSAGE:Lcom/oculus/horizon/cast/Message$ErrorCode;

    sget-object v5, Lcom/oculus/horizon/cast/Message;->DEFAULT_VIDEO_SPEC:Lcom/oculus/horizon/cast/VideoSpec;

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/cast/Message;-><init>(Ljava/lang/String;Lcom/oculus/horizon/cast/Message$Type;Ljava/lang/String;Lcom/oculus/horizon/cast/Message$ErrorCode;Lcom/oculus/horizon/cast/VideoSpec;)V

    sput-object v0, Lcom/oculus/horizon/cast/Message;->INVALID_MESSAGE:Lcom/oculus/horizon/cast/Message;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/oculus/horizon/cast/Message$Type;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/oculus/horizon/cast/Message;->mSessionId:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/oculus/horizon/cast/Message;->mType:Lcom/oculus/horizon/cast/Message$Type;

    .line 78
    iput-object p3, p0, Lcom/oculus/horizon/cast/Message;->mData:Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/oculus/horizon/cast/Message;->DEFAULT_VIDEO_SPEC:Lcom/oculus/horizon/cast/VideoSpec;

    iput-object v0, p0, Lcom/oculus/horizon/cast/Message;->mSpec:Lcom/oculus/horizon/cast/VideoSpec;

    .line 80
    sget-object v0, Lcom/oculus/horizon/cast/Message$ErrorCode;->NONE:Lcom/oculus/horizon/cast/Message$ErrorCode;

    iput-object v0, p0, Lcom/oculus/horizon/cast/Message;->mErrorCode:Lcom/oculus/horizon/cast/Message$ErrorCode;

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/oculus/horizon/cast/Message$Type;Ljava/lang/String;Lcom/oculus/horizon/cast/Message$ErrorCode;Lcom/oculus/horizon/cast/VideoSpec;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/oculus/horizon/cast/Message;->mSessionId:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/oculus/horizon/cast/Message;->mType:Lcom/oculus/horizon/cast/Message$Type;

    .line 102
    iput-object p3, p0, Lcom/oculus/horizon/cast/Message;->mData:Ljava/lang/String;

    .line 103
    iput-object p5, p0, Lcom/oculus/horizon/cast/Message;->mSpec:Lcom/oculus/horizon/cast/VideoSpec;

    .line 104
    iput-object p4, p0, Lcom/oculus/horizon/cast/Message;->mErrorCode:Lcom/oculus/horizon/cast/Message$ErrorCode;

    .line 105
    return-void
.end method

.method public static fromJSON(Lorg/json/JSONObject;)Lcom/oculus/horizon/cast/Message;
    .locals 11

    .prologue
    const/16 v0, 0x1e

    const/4 v9, 0x0

    const/16 v2, 0x200

    .line 152
    :try_start_0
    const-string v1, ""

    .line 153
    const-string v3, "type"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 154
    const-string v3, ""

    .line 160
    const-string v4, "sessionId"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    const-string v1, "sessionId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    :cond_0
    const-string v4, "error"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 165
    const-string v4, "error"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move v5, v4

    .line 168
    :goto_0
    const-string v4, "data"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 169
    const-string v3, "data"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 172
    :cond_1
    const-string v4, "video_height"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 173
    const-string v4, "video_height"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 174
    if-gtz v4, :cond_7

    move v8, v2

    .line 179
    :goto_1
    const-string v4, "video_width"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 180
    const-string v4, "video_width"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 181
    if-gtz v4, :cond_5

    move v7, v2

    .line 186
    :goto_2
    const-string v2, "video_fps"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 187
    const-string v2, "video_fps"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 188
    if-gtz v2, :cond_3

    move v6, v0

    .line 193
    :goto_3
    if-ltz v10, :cond_2

    invoke-static {}, Lcom/oculus/horizon/cast/Message$Type;->values()[Lcom/oculus/horizon/cast/Message$Type;

    move-result-object v0

    array-length v0, v0

    if-ge v10, v0, :cond_2

    .line 194
    new-instance v0, Lcom/oculus/horizon/cast/Message;

    .line 196
    invoke-static {}, Lcom/oculus/horizon/cast/Message$Type;->values()[Lcom/oculus/horizon/cast/Message$Type;

    move-result-object v2

    aget-object v2, v2, v10

    .line 198
    invoke-static {}, Lcom/oculus/horizon/cast/Message$ErrorCode;->values()[Lcom/oculus/horizon/cast/Message$ErrorCode;

    move-result-object v4

    aget-object v4, v4, v5

    new-instance v5, Lcom/oculus/horizon/cast/VideoSpec;

    invoke-direct {v5, v8, v7, v6}, Lcom/oculus/horizon/cast/VideoSpec;-><init>(III)V

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/cast/Message;-><init>(Ljava/lang/String;Lcom/oculus/horizon/cast/Message$Type;Ljava/lang/String;Lcom/oculus/horizon/cast/Message$ErrorCode;Lcom/oculus/horizon/cast/VideoSpec;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_4
    return-object v0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    sget-object v1, Lcom/oculus/horizon/cast/Message;->TAG:Ljava/lang/String;

    const-string v2, "Failed parse json %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v9

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    :cond_2
    sget-object v0, Lcom/oculus/horizon/cast/Message;->INVALID_MESSAGE:Lcom/oculus/horizon/cast/Message;

    goto :goto_4

    :cond_3
    move v6, v2

    goto :goto_3

    :cond_4
    move v6, v0

    goto :goto_3

    :cond_5
    move v7, v4

    goto :goto_2

    :cond_6
    move v7, v2

    goto :goto_2

    :cond_7
    move v8, v4

    goto :goto_1

    :cond_8
    move v8, v2

    goto :goto_1

    :cond_9
    move v5, v9

    goto/16 :goto_0
.end method

.method public static fromJSONString(Ljava/lang/String;)Lcom/oculus/horizon/cast/Message;
    .locals 5

    .prologue
    .line 210
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-static {v0}, Lcom/oculus/horizon/cast/Message;->fromJSON(Lorg/json/JSONObject;)Lcom/oculus/horizon/cast/Message;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 216
    :goto_0
    return-object v0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    sget-object v1, Lcom/oculus/horizon/cast/Message;->TAG:Ljava/lang/String;

    const-string v2, "Failed to parse message {%s} "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    sget-object v0, Lcom/oculus/horizon/cast/Message;->INVALID_MESSAGE:Lcom/oculus/horizon/cast/Message;

    goto :goto_0
.end method


# virtual methods
.method public toJSON()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 132
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 134
    :try_start_0
    const-string v0, "sessionId"

    iget-object v2, p0, Lcom/oculus/horizon/cast/Message;->mSessionId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string v0, "type"

    iget-object v2, p0, Lcom/oculus/horizon/cast/Message;->mType:Lcom/oculus/horizon/cast/Message$Type;

    iget v2, v2, Lcom/oculus/horizon/cast/Message$Type;->mValue:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 136
    const-string v0, "data"

    iget-object v2, p0, Lcom/oculus/horizon/cast/Message;->mData:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string v0, "error"

    iget-object v2, p0, Lcom/oculus/horizon/cast/Message;->mErrorCode:Lcom/oculus/horizon/cast/Message$ErrorCode;

    iget v2, v2, Lcom/oculus/horizon/cast/Message$ErrorCode;->mValue:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 138
    iget-object v0, p0, Lcom/oculus/horizon/cast/Message;->mSpec:Lcom/oculus/horizon/cast/VideoSpec;

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "video_height"

    iget-object v2, p0, Lcom/oculus/horizon/cast/Message;->mSpec:Lcom/oculus/horizon/cast/VideoSpec;

    iget v2, v2, Lcom/oculus/horizon/cast/VideoSpec;->mHeight:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 140
    const-string v0, "video_width"

    iget-object v2, p0, Lcom/oculus/horizon/cast/Message;->mSpec:Lcom/oculus/horizon/cast/VideoSpec;

    iget v2, v2, Lcom/oculus/horizon/cast/VideoSpec;->mWidth:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 141
    const-string v0, "video_fps"

    iget-object v2, p0, Lcom/oculus/horizon/cast/Message;->mSpec:Lcom/oculus/horizon/cast/VideoSpec;

    iget v2, v2, Lcom/oculus/horizon/cast/VideoSpec;->mFps:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_0
    return-object v1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    sget-object v2, Lcom/oculus/horizon/cast/Message;->TAG:Ljava/lang/String;

    const-string v3, "failed to create json object %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/oculus/horizon/cast/Message;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{sessionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/cast/Message;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/cast/Message;->mType:Lcom/oculus/horizon/cast/Message$Type;

    iget v1, v1, Lcom/oculus/horizon/cast/Message$Type;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/cast/Message;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "VideoSpec :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/cast/Message;->mSpec:Lcom/oculus/horizon/cast/VideoSpec;

    .line 123
    invoke-virtual {v1}, Lcom/oculus/horizon/cast/VideoSpec;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/cast/Message;->mErrorCode:Lcom/oculus/horizon/cast/Message$ErrorCode;

    iget v1, v1, Lcom/oculus/horizon/cast/Message$ErrorCode;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
