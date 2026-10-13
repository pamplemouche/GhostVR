.class public Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "AuthModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/AuthModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthLoginWithFbAuthError"
.end annotation


# instance fields
.field public allEmails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public code:D

.field public email:Ljava/lang/String;

.field public existingEmailConflict:Ljava/lang/String;

.field public fbAccessToken:Ljava/lang/String;

.field public fbUserId:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public methodId:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public nonce:Ljava/lang/String;

.field public profilePicUri:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public usernameSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 529
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 532
    :goto_0
    return-object v0

    .line 530
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;-><init>()V

    .line 531
    .local v0, "result":Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 495
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 497
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "code"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->code:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 498
    const-string v1, "message"

    iget-object v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 499
    const-string v1, "methodId"

    iget-object v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->methodId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 500
    const-string v1, "nonce"

    iget-object v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->nonce:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 501
    const-string v1, "title"

    iget-object v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 502
    const-string v2, "allEmails"

    iget-object v1, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->allEmails:Ljava/util/List;

    if-nez v1, :cond_0

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 503
    const-string v1, "email"

    iget-object v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 504
    const-string v1, "existingEmailConflict"

    iget-object v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->existingEmailConflict:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 505
    const-string v1, "fbAccessToken"

    iget-object v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->fbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 506
    const-string v1, "fbUserId"

    iget-object v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->fbUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 507
    const-string v1, "name"

    iget-object v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 508
    const-string v1, "profilePicUri"

    iget-object v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->profilePicUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 509
    const-string v2, "usernameSuggestions"

    iget-object v1, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->usernameSuggestions:Ljava/util/List;

    if-nez v1, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 511
    :goto_2
    return-object v0

    .line 502
    :cond_0
    iget-object v1, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->allEmails:Ljava/util/List;

    invoke-static {v1}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertStringListToJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_0

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->usernameSuggestions:Ljava/util/List;

    invoke-static {v1}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertStringListToJSONArray(Ljava/util/List;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 510
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 514
    const-string v0, "code"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->code:D

    .line 515
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->message:Ljava/lang/String;

    .line 516
    const-string v0, "methodId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->methodId:Ljava/lang/String;

    .line 517
    const-string v0, "nonce"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->nonce:Ljava/lang/String;

    .line 518
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->title:Ljava/lang/String;

    .line 519
    const-string v0, "allEmails"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->allEmails:Ljava/util/List;

    .line 520
    const-string v0, "email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->email:Ljava/lang/String;

    .line 521
    const-string v0, "existingEmailConflict"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    :goto_5
    iput-object v0, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->existingEmailConflict:Ljava/lang/String;

    .line 522
    const-string v0, "fbAccessToken"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    :goto_6
    iput-object v0, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->fbAccessToken:Ljava/lang/String;

    .line 523
    const-string v0, "fbUserId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v1

    :goto_7
    iput-object v0, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->fbUserId:Ljava/lang/String;

    .line 524
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v1

    :goto_8
    iput-object v0, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->name:Ljava/lang/String;

    .line 525
    const-string v0, "profilePicUri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    :goto_9
    iput-object v0, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->profilePicUri:Ljava/lang/String;

    .line 526
    const-string v0, "usernameSuggestions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_a
    iput-object v1, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->usernameSuggestions:Ljava/util/List;

    .line 527
    return-void

    .line 515
    :cond_0
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 517
    :cond_1
    const-string v0, "nonce"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 518
    :cond_2
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 519
    :cond_3
    const-string v0, "allEmails"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertJSONArrayToStringList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_3

    .line 520
    :cond_4
    const-string v0, "email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 521
    :cond_5
    const-string v0, "existingEmailConflict"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 522
    :cond_6
    const-string v0, "fbAccessToken"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 523
    :cond_7
    const-string v0, "fbUserId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 524
    :cond_8
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 525
    :cond_9
    const-string v0, "profilePicUri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 526
    :cond_a
    const-string v0, "usernameSuggestions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertJSONArrayToStringList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_a
.end method
