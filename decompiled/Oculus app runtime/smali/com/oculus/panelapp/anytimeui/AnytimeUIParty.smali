.class public Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;
.super Ljava/lang/Object;
.source "AnytimeUIParty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$SpawnLocation;,
        Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;
    }
.end annotation


# instance fields
.field private invitedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;",
            ">;"
        }
    .end annotation
.end field

.field private joinPolicy:Ljava/lang/String;

.field private leaderId:Ljava/lang/String;

.field private members:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;",
            ">;"
        }
    .end annotation
.end field

.field private partyId:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-string v0, "partyId"

    const-string v1, ""

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->members:Ljava/util/ArrayList;

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->invitedUsers:Ljava/util/ArrayList;

    .line 16
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "userId"

    .line 17
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->userId:Ljava/lang/String;

    .line 19
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 20
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->clearParty()V

    return-void

    .line 24
    :cond_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->partyId:Ljava/lang/String;

    const-string p1, "leaderId"

    .line 25
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->leaderId:Ljava/lang/String;

    const-string p1, "joinPolicy"

    .line 26
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->joinPolicy:Ljava/lang/String;

    const-string p1, "members"

    .line 28
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->jsonArrayToUserArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->members:Ljava/util/ArrayList;

    const-string p1, "invitedUsers"

    .line 29
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->jsonArrayToUserArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->invitedUsers:Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34
    :catch_0
    iput-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->userId:Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->clearParty()V

    goto :goto_0

    .line 31
    :catch_1
    iput-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->userId:Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->clearParty()V

    :goto_0
    return-void
.end method

.method private clearParty()V
    .locals 1

    const-string v0, ""

    .line 62
    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->partyId:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->leaderId:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->joinPolicy:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->members:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 66
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->invitedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private jsonArrayToUserArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 41
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    move-object/from16 v2, p1

    .line 42
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 43
    new-instance v15, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;

    const-string v4, "userId"

    .line 45
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "alias"

    .line 46
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "displayName"

    .line 47
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "presence"

    .line 48
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v4, "presenceAppId"

    .line 49
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v4, "presenceAppPackageName"

    .line 50
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v4, "presenceDeeplinkMessage"

    .line 51
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v4, "online"

    .line 52
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    const-string v4, "largeImageUrl"

    .line 53
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "smallImageUrl"

    .line 54
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v4, "avatarImageUrl"

    .line 55
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v4, "spawnLocation"

    .line 56
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$SpawnLocation;->valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$SpawnLocation;

    move-result-object v3

    move-object v4, v15

    move-object/from16 v5, p0

    move-object v2, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v3

    invoke-direct/range {v4 .. v17}, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$SpawnLocation;)V

    .line 43
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getInvitedUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->invitedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getJoinPolicy()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->joinPolicy:Ljava/lang/String;

    return-object v0
.end method

.method public getLeaderName()Ljava/lang/String;
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->members:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;

    .line 95
    iget-object v2, v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->leaderId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    iget-object v0, v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->alias:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->members:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getPartyID()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->partyId:Ljava/lang/String;

    return-object v0
.end method

.method public isInParty()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->partyId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isLeader()Z
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->isInParty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->userId:Ljava/lang/String;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->leaderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
