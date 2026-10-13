.class public Lcom/oculus/horizon/notifications/core/NotificationsProperties;
.super Ljava/lang/Object;
.source "NotificationsProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/notifications/core/NotificationsProperties;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_DEEPLINK_LOCATION:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCustomDataString:Ljava/lang/String;

.field private mDeeplink:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mFBid:Ljava/lang/String;

.field private mNDID:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mType:Ljava/lang/String;

.field private mUUID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->TAG:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/oculus/horizon/notifications/core/AUIDeeplinkRoutes;->HOME:Lcom/oculus/horizon/notifications/core/AUIDeeplinkRoutes;

    invoke-virtual {v0}, Lcom/oculus/horizon/notifications/core/AUIDeeplinkRoutes;->path()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->DEFAULT_DEEPLINK_LOCATION:Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/oculus/horizon/notifications/core/NotificationsProperties$1;

    invoke-direct {v0}, Lcom/oculus/horizon/notifications/core/NotificationsProperties$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mFBid:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mUUID:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mType:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mCustomDataString:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mNDID:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mDeeplink:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mFBid:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mUUID:Ljava/lang/String;

    .line 113
    iput-object p3, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mType:Ljava/lang/String;

    .line 114
    if-nez p4, :cond_0

    const-string p4, ""

    :cond_0
    iput-object p4, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mCustomDataString:Ljava/lang/String;

    .line 115
    iput-object p5, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mNDID:Ljava/lang/String;

    .line 116
    iput-object p6, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mDeeplink:Ljava/lang/String;

    .line 117
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 87
    :cond_0
    :goto_0
    return v1

    .line 69
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 73
    check-cast p1, Lcom/oculus/horizon/notifications/core/NotificationsProperties;

    .line 75
    iget-object v2, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mFBid:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mFBid:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mFBid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    :cond_2
    iget-object v2, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mUUID:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mUUID:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mUUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    :cond_3
    iget-object v2, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mCustomDataString:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mCustomDataString:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mCustomDataString:Ljava/lang/String;

    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    :cond_4
    iget-object v2, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mType:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mType:Ljava/lang/String;

    iget-object v1, p1, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_5
    :goto_1
    move v1, v0

    goto :goto_0

    .line 75
    :cond_6
    iget-object v2, p1, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mFBid:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 78
    :cond_7
    iget-object v2, p1, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mUUID:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_0

    .line 82
    :cond_8
    iget-object v2, p1, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mCustomDataString:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_0

    .line 87
    :cond_9
    iget-object v2, p1, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mType:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_1
.end method

.method public getCustomDataJson()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 170
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mCustomDataString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-object v0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public getCustomDataString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mCustomDataString:Ljava/lang/String;

    return-object v0
.end method

.method public getDeeplink()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mDeeplink:Ljava/lang/String;

    return-object v0
.end method

.method public getDeeplinkUri()Landroid/net/Uri;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->getDeeplink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mDeeplink:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oculus/horizon/notifications/core/AUIDeeplinkRoutes;->fromPath(Ljava/lang/String;)Lcom/oculus/horizon/notifications/core/AUIDeeplinkRoutes;

    move-result-object v1

    .line 204
    if-eqz v1, :cond_0

    .line 212
    :goto_0
    return-object v0

    .line 207
    :cond_0
    sget-object v1, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->TAG:Ljava/lang/String;

    const-string v2, "No valid deeplink found for uri: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    sget-object v0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->DEFAULT_DEEPLINK_LOCATION:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 211
    :cond_1
    sget-object v0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->TAG:Ljava/lang/String;

    const-string v1, "No Deeplink sent from server, returning null"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFBid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mFBid:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 217
    new-instance v0, Ljava/util/HashSet;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "imageUri"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "sender_photo"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "accepter_photo"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "friend_photo"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "application_photo"

    aput-object v4, v2, v3

    .line 219
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 223
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->getCustomDataJson()Lorg/json/JSONObject;

    move-result-object v2

    .line 225
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 226
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 227
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 230
    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    sget-object v2, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->TAG:Ljava/lang/String;

    const-string v3, "Unable to find key for any image uris in custom data"

    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 233
    goto :goto_0
.end method

.method public getNDID()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mNDID:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mUUID:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mFBid:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mFBid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 93
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mUUID:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mUUID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 94
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mType:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 95
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mCustomDataString:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mCustomDataString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 96
    return v0

    :cond_1
    move v0, v1

    .line 92
    goto :goto_0

    :cond_2
    move v0, v1

    .line 93
    goto :goto_1

    :cond_3
    move v0, v1

    .line 94
    goto :goto_2
.end method

.method public isFeedNotif()Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 239
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->getCustomDataJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 240
    const-string v3, "is_in_feed"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    .line 248
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v2, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 249
    :catch_0
    move-exception v0

    .line 250
    sget-object v3, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->TAG:Ljava/lang/String;

    const-string v4, "Error parsing custom JSON data for key %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "is_in_feed"

    aput-object v6, v5, v1

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mFBid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mUUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mCustomDataString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mNDID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->mDeeplink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    return-void
.end method
