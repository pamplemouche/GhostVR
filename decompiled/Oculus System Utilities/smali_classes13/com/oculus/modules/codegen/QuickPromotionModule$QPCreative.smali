.class public Lcom/oculus/modules/codegen/QuickPromotionModule$QPCreative;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "QuickPromotionModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/QuickPromotionModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QPCreative"
.end annotation


# instance fields
.field public auto_size_image:Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;

.field public content_text:Ljava/lang/String;

.field public dismiss_action:Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;

.field public primary_action:Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;

.field public secondary_action:Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;

.field public title_text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/QuickPromotionModule$QPCreative;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 530
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 533
    :goto_0
    return-object v0

    .line 531
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPCreative;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPCreative;-><init>()V

    .line 532
    .local v0, "result":Lcom/oculus/modules/codegen/QuickPromotionModule$QPCreative;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPCreative;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 510
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 512
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    iget-object v1, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPCreative;->auto_size_image:Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;

    if-eqz v1, :cond_0

    const-string v1, "auto_size_image"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPCreative;->auto_size_image:Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;

    invoke-virtual {v2}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;->convertToJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 513
    :cond_0
    iget-object v1, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPCreative;->content_text:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "content_text"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPCreative;->content_text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 514
    :cond_1
    iget-object v1, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPCreative;->dismiss_action:Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;

    if-eqz v1, :cond_2

    const-string v1, "dismiss_action"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPCreative;->dismiss_action:Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;

    invoke-virtual {v2}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;->convertToJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 515
    :cond_2
    iget-object v1, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPCreative;->primary_action:Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;

    if-eqz v1, :cond_3

    const-string v1, "primary_action"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPCreative;->primary_action:Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;

    invoke-virtual {v2}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;->convertToJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 516
    :cond_3
    iget-object v1, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPCreative;->secondary_action:Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;

    if-eqz v1, :cond_4

    const-string v1, "secondary_action"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPCreative;->secondary_action:Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;

    invoke-virtual {v2}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;->convertToJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 517
    :cond_4
    iget-object v1, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPCreative;->title_text:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, "title_text"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPCreative;->title_text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :cond_5
    :goto_0
    return-object v0

    .line 518
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 522
    const-string v0, "auto_size_image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPCreative;->auto_size_image:Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;

    .line 523
    const-string v0, "content_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPCreative;->content_text:Ljava/lang/String;

    .line 524
    const-string v0, "dismiss_action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPCreative;->dismiss_action:Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;

    .line 525
    const-string v0, "primary_action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPCreative;->primary_action:Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;

    .line 526
    const-string v0, "secondary_action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPCreative;->secondary_action:Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;

    .line 527
    const-string v0, "title_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_5
    iput-object v1, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPCreative;->title_text:Ljava/lang/String;

    .line 528
    return-void

    .line 522
    :cond_0
    const-string v0, "auto_size_image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;

    move-result-object v0

    goto :goto_0

    .line 523
    :cond_1
    const-string v0, "content_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 524
    :cond_2
    const-string v0, "dismiss_action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;

    move-result-object v0

    goto :goto_2

    .line 525
    :cond_3
    const-string v0, "primary_action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;

    move-result-object v0

    goto :goto_3

    .line 526
    :cond_4
    const-string v0, "secondary_action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;

    move-result-object v0

    goto :goto_4

    .line 527
    :cond_5
    const-string v0, "title_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5
.end method
