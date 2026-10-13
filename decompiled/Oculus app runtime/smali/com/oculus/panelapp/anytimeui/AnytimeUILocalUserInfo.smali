.class public Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;
.super Ljava/lang/Object;
.source "AnytimeUILocalUserInfo.java"


# instance fields
.field private final avatarImageUrl:Ljava/lang/String;

.field private final imageUrl:Ljava/lang/String;

.field private final userAlias:Ljava/lang/String;

.field private final userId:Ljava/lang/String;

.field private final userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const-string v0, ""

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "userAvatarImageUrl"

    .line 16
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "userImageUrl"

    .line 17
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "userAlias"

    .line 18
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "userName"

    .line 19
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "userId"

    .line 20
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-object p1, v0

    move-object v1, p1

    move-object v3, v1

    move-object v4, v3

    .line 28
    :goto_0
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;->avatarImageUrl:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;->imageUrl:Ljava/lang/String;

    .line 30
    iput-object v3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;->userAlias:Ljava/lang/String;

    .line 31
    iput-object v4, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;->userName:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;->userId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAvatarImageUrl()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;->avatarImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAlias()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;->userAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;->userName:Ljava/lang/String;

    return-object v0
.end method
