.class public Lcom/oculus/config/mobileconfigclient/MobileConfigClient;
.super Ljava/lang/Object;
.source "MobileConfigClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;,
        Lcom/oculus/config/mobileconfigclient/MobileConfigClient$ConfigField;,
        Lcom/oculus/config/mobileconfigclient/MobileConfigClient$Config;,
        Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigResponse;,
        Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigCombinedResponse;,
        Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigSchema;,
        Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigSchemaFile;
    }
.end annotation


# static fields
.field private static final CONFIG_METADATA_JSON:Ljava/lang/String; = "ConfigMetadata.json"

.field private static final MOBILE_CONFIG_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.horizon"

.field private static final MOBILE_CONFIG_SERVICE_SERVICE_NAME:Ljava/lang/String; = "com.oculus.config.mobileconfigservice.MobileConfigService"

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_BOOL:Ljava/lang/String; = "bool"

.field private static final TYPE_DOUBLE:Ljava/lang/String; = "double"

.field private static final TYPE_FBT:Ljava/lang/String; = "fbt"

.field private static final TYPE_INT:Ljava/lang/String; = "int"

.field private static final TYPE_STR:Ljava/lang/String; = "str"

.field private static final booleanValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final doubleValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final integerValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mMobileConfigServiceLocker:Ljava/lang/Object;

.field private static final stringValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHash:Ljava/lang/String;

.field private mMobileConfigService:Lcom/oculus/aidl/IMobileConfigService;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mMobileConfigServiceConnected:Z

.field private final mMobileConfigServiceConnection:Landroid/content/ServiceConnection;

.field private mShouldUpdateMCs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->booleanValues:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->integerValues:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->stringValues:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->doubleValues:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mMobileConfigServiceLocker:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mMobileConfigService:Lcom/oculus/aidl/IMobileConfigService;

    .line 51
    new-instance v0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$1;

    invoke-direct {v0, p0}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$1;-><init>(Lcom/oculus/config/mobileconfigclient/MobileConfigClient;)V

    iput-object v0, p0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mMobileConfigServiceConnection:Landroid/content/ServiceConnection;

    .line 75
    iput-object p1, p0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mContext:Landroid/content/Context;

    .line 76
    iget-object v0, p0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mMobileConfigServiceConnection:Landroid/content/ServiceConnection;

    invoke-direct {p0, v0}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->bindToMobileConfigService(Landroid/content/ServiceConnection;)V

    .line 77
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mMobileConfigServiceLocker:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/config/mobileconfigclient/MobileConfigClient;Lcom/oculus/aidl/IMobileConfigService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oculus/config/mobileconfigclient/MobileConfigClient;
    .param p1, "x1"    # Lcom/oculus/aidl/IMobileConfigService;
    .param p2, "x2"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->setMobileConfigService(Lcom/oculus/aidl/IMobileConfigService;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/config/mobileconfigclient/MobileConfigClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oculus/config/mobileconfigclient/MobileConfigClient;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mShouldUpdateMCs:Z

    return v0
.end method

.method static synthetic access$300(Lcom/oculus/config/mobileconfigclient/MobileConfigClient;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/config/mobileconfigclient/MobileConfigClient;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mHash:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/config/mobileconfigclient/MobileConfigClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/config/mobileconfigclient/MobileConfigClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->updateMCsAndHandleResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bindToMobileConfigService(Landroid/content/ServiceConnection;)V
    .locals 4
    .param p1, "serviceConnection"    # Landroid/content/ServiceConnection;

    .prologue
    .line 188
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.horizon"

    const-string v3, "com.oculus.config.mobileconfigservice.MobileConfigService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 191
    .local v0, "bindIntent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 192
    iget-object v2, p0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, p1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 193
    return-void
.end method

.method private decodeResultAndPopulateMCMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "configValueJsonString"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "configDefinition"    # Ljava/lang/String;

    .prologue
    .line 239
    if-nez p1, :cond_1

    .line 285
    :cond_0
    return-void

    .line 243
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->getMobileConfigSchemaFromJson(Ljava/lang/String;)Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigSchemaFile;

    move-result-object v8

    .line 244
    .local v8, "schemaFile":Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigSchemaFile;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 245
    .local v11, "typeMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 246
    .local v9, "slotIdMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v12, v8, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigSchemaFile;->schemas:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 247
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigSchema;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v14, ":"

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 248
    .local v7, "keys":[Ljava/lang/String;
    new-instance v2, Landroid/util/Pair;

    const/4 v12, 0x0

    aget-object v12, v7, v12

    const/4 v14, 0x1

    aget-object v14, v7, v14

    invoke-direct {v2, v12, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 249
    .local v2, "configIdAndParamId":Landroid/util/Pair;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigSchema;

    iget-object v12, v12, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigSchema;->type:Ljava/lang/String;

    invoke-interface {v11, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigSchema;

    iget v12, v12, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigSchema;->slotId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 253
    .end local v2    # "configIdAndParamId":Landroid/util/Pair;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigSchema;>;"
    .end local v7    # "keys":[Ljava/lang/String;
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->getMobileConfigValueFromJson(Ljava/lang/String;)Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigCombinedResponse;

    move-result-object v3

    .line 255
    .local v3, "configValue":Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigCombinedResponse;
    if-eqz v3, :cond_0

    iget-object v12, v3, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigCombinedResponse;->sessionbased:Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigResponse;

    if-eqz v12, :cond_0

    iget-object v12, v3, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigCombinedResponse;->sessionbased:Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigResponse;

    iget-object v12, v12, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigResponse;->configs:Ljava/util/Map;

    if-eqz v12, :cond_0

    .line 261
    iget-object v12, v3, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigCombinedResponse;->sessionbased:Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigResponse;

    iget-object v12, v12, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigResponse;->configs:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 262
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oculus/config/mobileconfigclient/MobileConfigClient$Config;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$Config;

    iget-object v12, v12, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$Config;->fields:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$ConfigField;

    .line 263
    .local v6, "field":Lcom/oculus/config/mobileconfigclient/MobileConfigClient$ConfigField;
    new-instance v2, Landroid/util/Pair;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    iget-object v15, v6, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$ConfigField;->name:Ljava/lang/String;

    invoke-direct {v2, v12, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    .restart local v2    # "configIdAndParamId":Landroid/util/Pair;
    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 265
    .local v10, "type":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 268
    const/4 v12, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :cond_5
    :goto_2
    packed-switch v12, :pswitch_data_0

    goto :goto_1

    .line 271
    :pswitch_0
    sget-object v12, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->stringValues:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iget-object v0, v6, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$ConfigField;->str:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v12, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 268
    :sswitch_0
    const-string v15, "str"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v12, 0x0

    goto :goto_2

    :sswitch_1
    const-string v15, "fbt"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v12, 0x1

    goto :goto_2

    :sswitch_2
    const-string v15, "int"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v12, 0x2

    goto :goto_2

    :sswitch_3
    const-string v15, "bool"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v12, 0x3

    goto :goto_2

    :sswitch_4
    const-string v15, "double"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v12, 0x4

    goto :goto_2

    .line 274
    :pswitch_1
    sget-object v12, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->integerValues:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iget v0, v6, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$ConfigField;->i64:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v12, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 277
    :pswitch_2
    sget-object v15, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->booleanValues:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    iget v12, v6, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$ConfigField;->bln:I

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_6

    const/4 v12, 0x1

    :goto_3
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_6
    const/4 v12, 0x0

    goto :goto_3

    .line 280
    :pswitch_3
    sget-object v12, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->doubleValues:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iget-wide v0, v6, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$ConfigField;->dbl:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v12, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 268
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_4
        0x18b38 -> :sswitch_1
        0x197ef -> :sswitch_2
        0x1be31 -> :sswitch_0
        0x2e3aea -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getMobileConfigResponse(Lorg/json/JSONObject;)Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigResponse;
    .locals 12
    .param p1, "mobileConfigResponseJson"    # Lorg/json/JSONObject;

    .prologue
    const/4 v10, 0x0

    .line 325
    new-instance v9, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigResponse;

    invoke-direct {v9, v10}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigResponse;-><init>(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$1;)V

    .line 327
    .local v9, "mobileConfigResponse":Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigResponse;
    :try_start_0
    const-string v10, "query_hash"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigResponse;->queryHash:Ljava/lang/String;

    .line 328
    const-string v10, "configs"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 329
    .local v0, "allConfigsJson":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 330
    .local v8, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 331
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 332
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 333
    .local v4, "configJson":Lorg/json/JSONObject;
    new-instance v1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$Config;

    const/4 v10, 0x0

    invoke-direct {v1, v10}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$Config;-><init>(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$1;)V

    .line 334
    .local v1, "config":Lcom/oculus/config/mobileconfigclient/MobileConfigClient$Config;
    const-string v10, "hash"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$Config;->hash:Ljava/lang/String;

    .line 335
    const-string v10, "fields"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 336
    .local v3, "configFieldJson":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v6, v10, :cond_0

    .line 337
    new-instance v2, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$ConfigField;

    const/4 v10, 0x0

    invoke-direct {v2, v10}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$ConfigField;-><init>(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$1;)V

    .line 338
    .local v2, "configField":Lcom/oculus/config/mobileconfigclient/MobileConfigClient$ConfigField;
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "bln"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v2, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$ConfigField;->bln:I

    .line 339
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "pname"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$ConfigField;->name:Ljava/lang/String;

    .line 340
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "li"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$ConfigField;->loggingIdentifier:Ljava/lang/String;

    .line 341
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "str"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$ConfigField;->str:Ljava/lang/String;

    .line 342
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "dbl"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v2, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$ConfigField;->dbl:D

    .line 343
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "i64"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v2, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$ConfigField;->i64:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 346
    .end local v0    # "allConfigsJson":Lorg/json/JSONObject;
    .end local v1    # "config":Lcom/oculus/config/mobileconfigclient/MobileConfigClient$Config;
    .end local v2    # "configField":Lcom/oculus/config/mobileconfigclient/MobileConfigClient$ConfigField;
    .end local v3    # "configFieldJson":Lorg/json/JSONArray;
    .end local v4    # "configJson":Lorg/json/JSONObject;
    .end local v6    # "i":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    .line 347
    .local v5, "ex":Lorg/json/JSONException;
    sget-object v10, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->TAG:Ljava/lang/String;

    const-string v11, "exception decoding config values"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    .end local v5    # "ex":Lorg/json/JSONException;
    :cond_1
    return-object v9
.end method

.method private getMobileConfigSchemaFromJson(Ljava/lang/String;)Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigSchemaFile;
    .locals 9
    .param p1, "configDefinition"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 288
    new-instance v4, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigSchemaFile;

    invoke-direct {v4, v7}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigSchemaFile;-><init>(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$1;)V

    .line 290
    .local v4, "mobileConfigSchemaFile":Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigSchemaFile;
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "schema"

    .line 291
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 292
    .local v5, "mobileConfigSchemaFileJson":Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 293
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 294
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 295
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 296
    .local v6, "mobileConfigSchemaJson":Lorg/json/JSONObject;
    new-instance v3, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigSchema;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigSchema;-><init>(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$1;)V

    .line 297
    .local v3, "mobileConfigSchema":Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigSchema;
    const-string v7, "defaultValue"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigSchema;->defaultValue:Ljava/lang/String;

    .line 298
    const-string v7, "type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigSchema;->type:Ljava/lang/String;

    .line 299
    const-string v7, "slotId"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigSchema;->slotId:I

    .line 300
    iget-object v7, v4, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigSchemaFile;->schemas:Ljava/util/Map;

    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "mobileConfigSchema":Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigSchema;
    .end local v5    # "mobileConfigSchemaFileJson":Lorg/json/JSONObject;
    .end local v6    # "mobileConfigSchemaJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 303
    .local v0, "ex":Lorg/json/JSONException;
    sget-object v7, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->TAG:Ljava/lang/String;

    const-string v8, "exception decoding config schemas"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    .end local v0    # "ex":Lorg/json/JSONException;
    :cond_0
    return-object v4
.end method

.method private getMobileConfigValueFromJson(Ljava/lang/String;)Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigCombinedResponse;
    .locals 5
    .param p1, "configValueJsonString"    # Ljava/lang/String;

    .prologue
    .line 310
    new-instance v2, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigCombinedResponse;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigCombinedResponse;-><init>(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$1;)V

    .line 312
    .local v2, "mobileConfigCombinedResponse":Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigCombinedResponse;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 313
    .local v0, "configValueJson":Lorg/json/JSONObject;
    const-string v3, "sessionbased"

    .line 314
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->getMobileConfigResponse(Lorg/json/JSONObject;)Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigResponse;

    move-result-object v3

    iput-object v3, v2, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigCombinedResponse;->sessionbased:Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigResponse;

    .line 315
    const-string v3, "sessionless"

    .line 316
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->getMobileConfigResponse(Lorg/json/JSONObject;)Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigResponse;

    move-result-object v3

    iput-object v3, v2, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigCombinedResponse;->sessionless:Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigResponse;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .end local v0    # "configValueJson":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 317
    :catch_0
    move-exception v1

    .line 318
    .local v1, "ex":Lorg/json/JSONException;
    sget-object v3, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->TAG:Ljava/lang/String;

    const-string v4, "exception decoding config combined values"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 404
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 405
    .local v2, "size":I
    new-array v0, v2, [B

    .line 406
    .local v0, "buffer":[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 407
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 408
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    .end local v0    # "buffer":[B
    .end local v2    # "size":I
    :goto_0
    return-object v3

    .line 409
    :catch_0
    move-exception v1

    .line 410
    .local v1, "ex":Ljava/io/IOException;
    sget-object v3, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->TAG:Ljava/lang/String;

    const-string v4, "Failed to read from input stream"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private loadJSONFromAsset()Ljava/lang/String;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 389
    :try_start_0
    iget-object v3, p0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mContext:Landroid/content/Context;

    .line 390
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "ConfigMetadata.json"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "configDefinition":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 397
    .end local v0    # "configDefinition":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 394
    .restart local v0    # "configDefinition":Ljava/lang/String;
    :cond_0
    const-string v3, "\\s"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 395
    .end local v0    # "configDefinition":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 396
    .local v1, "ex":Ljava/io/IOException;
    sget-object v3, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->TAG:Ljava/lang/String;

    const-string v4, "Failed to read config asset file"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setMobileConfigService(Lcom/oculus/aidl/IMobileConfigService;Z)V
    .locals 0
    .param p1, "mobileConfigService"    # Lcom/oculus/aidl/IMobileConfigService;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "mobileConfigServiceConnected"    # Z

    .prologue
    .line 197
    iput-object p1, p0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mMobileConfigService:Lcom/oculus/aidl/IMobileConfigService;

    .line 198
    iput-boolean p2, p0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mMobileConfigServiceConnected:Z

    .line 199
    return-void
.end method

.method private updateMCsAndHandleResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "hash"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 204
    :try_start_0
    iget-object v12, p0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mMobileConfigService:Lcom/oculus/aidl/IMobileConfigService;

    if-nez v12, :cond_0

    .line 205
    sget-object v12, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->TAG:Ljava/lang/String;

    const-string v13, "ipc fetch failed - service not connected"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v1, 0x0

    .line 233
    :goto_0
    return-object v1

    .line 208
    :cond_0
    invoke-direct {p0}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->loadJSONFromAsset()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "configDefinition":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 210
    const/4 v1, 0x0

    goto :goto_0

    .line 212
    :cond_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 213
    .local v6, "pipe":[Landroid/os/ParcelFileDescriptor;
    const/4 v12, 0x0

    aget-object v7, v6, v12

    .line 214
    .local v7, "readSide":Landroid/os/ParcelFileDescriptor;
    const/4 v12, 0x1

    aget-object v9, v6, v12

    .line 215
    .local v9, "writeSide":Landroid/os/ParcelFileDescriptor;
    new-instance v5, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v5, v9}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 216
    .local v5, "outputStream":Ljava/io/OutputStream;
    const-string v12, "UTF-8"

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/io/OutputStream;->write([B)V

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 219
    .local v10, "startTime":J
    iget-object v12, p0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mMobileConfigService:Lcom/oculus/aidl/IMobileConfigService;

    invoke-interface {v12, p1, v7}, Lcom/oculus/aidl/IMobileConfigService;->updateMCs(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 220
    .local v8, "returnFD":Landroid/os/ParcelFileDescriptor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 221
    .local v2, "endTime":J
    new-instance v12, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v12, v8}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 222
    invoke-direct {p0, v12}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "configValueJsonString":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->decodeResultAndPopulateMCMap(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 225
    .end local v0    # "configDefinition":Ljava/lang/String;
    .end local v1    # "configValueJsonString":Ljava/lang/String;
    .end local v2    # "endTime":J
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .end local v6    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v7    # "readSide":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "returnFD":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "writeSide":Landroid/os/ParcelFileDescriptor;
    .end local v10    # "startTime":J
    :catch_0
    move-exception v4

    .line 226
    .local v4, "ex":Landroid/os/RemoteException;
    sget-object v12, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->TAG:Ljava/lang/String;

    const-string v13, "ipc fetch for configs failed"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    const/4 v1, 0x0

    goto :goto_0

    .line 228
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 229
    .local v4, "ex":Ljava/io/IOException;
    sget-object v12, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->TAG:Ljava/lang/String;

    const-string v13, "ipc fetch for configs failed"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    const/4 v1, 0x0

    goto :goto_0

    .line 231
    .end local v4    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 232
    .local v4, "ex":Ljava/lang/NullPointerException;
    sget-object v12, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->TAG:Ljava/lang/String;

    const-string v13, "ipc fetch for configs failed"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBoolImpl(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;Z)Ljava/lang/Boolean;
    .locals 6
    .param p1, "param"    # Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;
    .param p2, "defaultVal"    # Z
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 106
    sget-object v2, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mMobileConfigServiceLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 107
    :try_start_0
    sget-object v1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->booleanValues:Ljava/util/Map;

    iget-wide v4, p1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;->slotId:D

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 108
    .local v0, "val":Ljava/lang/Boolean;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0, p1}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->logExposureImpl(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;)V

    .line 112
    :cond_0
    return-object v0

    .line 108
    .end local v0    # "val":Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getBoolWithoutLoggingExposureImpl(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;Z)Ljava/lang/Boolean;
    .locals 4
    .param p1, "param"    # Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;
    .param p2, "defaultVal"    # Z
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 150
    sget-object v1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mMobileConfigServiceLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_0
    sget-object v0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->booleanValues:Ljava/util/Map;

    iget-wide v2, p1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;->slotId:D

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    monitor-exit v1

    return-object v0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDoubleImpl(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;D)Ljava/lang/Double;
    .locals 6
    .param p1, "param"    # Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;
    .param p2, "defaultVal"    # D
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 130
    sget-object v2, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mMobileConfigServiceLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 131
    :try_start_0
    sget-object v1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->doubleValues:Ljava/util/Map;

    iget-wide v4, p1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;->slotId:D

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 132
    .local v0, "val":Ljava/lang/Double;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->logExposureImpl(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;)V

    .line 136
    :cond_0
    return-object v0

    .line 132
    .end local v0    # "val":Ljava/lang/Double;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getDoubleWithoutLoggingExposureImpl(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;D)Ljava/lang/Double;
    .locals 4
    .param p1, "param"    # Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;
    .param p2, "defaultVal"    # D
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 166
    sget-object v1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mMobileConfigServiceLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    :try_start_0
    sget-object v0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->doubleValues:Ljava/util/Map;

    iget-wide v2, p1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;->slotId:D

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    monitor-exit v1

    return-object v0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIntImpl(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;D)Ljava/lang/Integer;
    .locals 6
    .param p1, "param"    # Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;
    .param p2, "defaultVal"    # D
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 118
    sget-object v2, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mMobileConfigServiceLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 119
    :try_start_0
    sget-object v1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->integerValues:Ljava/util/Map;

    iget-wide v4, p1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;->slotId:D

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 120
    .local v0, "val":Ljava/lang/Integer;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0, p1}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->logExposureImpl(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;)V

    .line 124
    :cond_0
    return-object v0

    .line 120
    .end local v0    # "val":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getIntWithoutLoggingExposureImpl(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;D)Ljava/lang/Integer;
    .locals 4
    .param p1, "param"    # Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;
    .param p2, "defaultVal"    # D
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 158
    sget-object v1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mMobileConfigServiceLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    sget-object v0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->integerValues:Ljava/util/Map;

    iget-wide v2, p1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;->slotId:D

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    monitor-exit v1

    return-object v0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLoggingId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "configName"    # Ljava/lang/String;
    .param p2, "paramName"    # Ljava/lang/String;

    .prologue
    .line 354
    :try_start_0
    iget-object v5, p0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mContext:Landroid/content/Context;

    const-string v6, "config_values.txt"

    .line 355
    invoke-virtual {v5, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "configValueString":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->getMobileConfigValueFromJson(Ljava/lang/String;)Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigCombinedResponse;

    move-result-object v1

    .line 359
    .local v1, "configValue":Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigCombinedResponse;
    if-eqz v1, :cond_0

    iget-object v5, v1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigCombinedResponse;->sessionbased:Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigResponse;

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigCombinedResponse;->sessionbased:Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigResponse;

    iget-object v5, v5, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigResponse;->configs:Ljava/util/Map;

    if-nez v5, :cond_1

    .line 362
    :cond_0
    const-string v5, ""

    .line 383
    .end local v1    # "configValue":Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigCombinedResponse;
    .end local v2    # "configValueString":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 365
    .restart local v1    # "configValue":Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigCombinedResponse;
    .restart local v2    # "configValueString":Ljava/lang/String;
    :cond_1
    iget-object v5, v1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigCombinedResponse;->sessionbased:Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigResponse;

    iget-object v5, v5, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigResponse;->configs:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$Config;

    .line 366
    .local v0, "config":Lcom/oculus/config/mobileconfigclient/MobileConfigClient$Config;
    if-eqz v0, :cond_2

    iget-object v5, v0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$Config;->fields:Ljava/util/List;

    if-nez v5, :cond_3

    .line 367
    :cond_2
    const-string v5, ""

    goto :goto_0

    .line 370
    :cond_3
    iget-object v5, v0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$Config;->fields:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$ConfigField;

    .line 371
    .local v4, "field":Lcom/oculus/config/mobileconfigclient/MobileConfigClient$ConfigField;
    iget-object v6, v4, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$ConfigField;->name:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 372
    iget-object v5, v4, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$ConfigField;->loggingIdentifier:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    .end local v0    # "config":Lcom/oculus/config/mobileconfigclient/MobileConfigClient$Config;
    .end local v1    # "configValue":Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigCombinedResponse;
    .end local v2    # "configValueString":Ljava/lang/String;
    .end local v4    # "field":Lcom/oculus/config/mobileconfigclient/MobileConfigClient$ConfigField;
    :catch_0
    move-exception v3

    .line 376
    .local v3, "ex":Ljava/io/IOException;
    sget-object v5, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to get logging id for config - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " param - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    const-string v5, ""

    goto :goto_0

    .line 383
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v0    # "config":Lcom/oculus/config/mobileconfigclient/MobileConfigClient$Config;
    .restart local v1    # "configValue":Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigCombinedResponse;
    .restart local v2    # "configValueString":Ljava/lang/String;
    :cond_5
    const-string v5, ""

    goto :goto_0
.end method

.method public getStringImpl(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "param"    # Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;
    .param p2, "defaultVal"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 94
    sget-object v2, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mMobileConfigServiceLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 95
    :try_start_0
    sget-object v1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->stringValues:Ljava/util/Map;

    iget-wide v4, p1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;->slotId:D

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    .local v0, "val":Ljava/lang/String;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0, p1}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->logExposureImpl(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;)V

    .line 100
    :cond_0
    return-object v0

    .line 96
    .end local v0    # "val":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getStringWithoutLoggingExposureImpl(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "param"    # Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;
    .param p2, "defaultVal"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 142
    sget-object v1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mMobileConfigServiceLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    sget-object v0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->stringValues:Ljava/util/Map;

    iget-wide v2, p1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;->slotId:D

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public logExposureImpl(Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;)V
    .locals 7
    .param p1, "param"    # Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 174
    :try_start_0
    sget-object v2, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mMobileConfigServiceLocker:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :try_start_1
    iget-boolean v1, p0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mMobileConfigServiceConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mMobileConfigService:Lcom/oculus/aidl/IMobileConfigService;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mMobileConfigService:Lcom/oculus/aidl/IMobileConfigService;

    iget-object v3, p1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;->config:Ljava/lang/String;

    iget-object v4, p1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;->parameter:Ljava/lang/String;

    iget-object v5, p1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;->config:Ljava/lang/String;

    iget-object v6, p1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient$MobileConfigParamType;->parameter:Ljava/lang/String;

    .line 177
    invoke-virtual {p0, v5, v6}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->getLoggingId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 176
    invoke-interface {v1, v3, v4, v5}, Lcom/oculus/aidl/IMobileConfigService;->logExposure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_0
    monitor-exit v2

    .line 185
    :goto_1
    return-void

    .line 179
    :cond_0
    sget-object v1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->TAG:Ljava/lang/String;

    const-string v3, "mobile config exposure log dropped as IPC not connected"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "ex":Landroid/os/RemoteException;
    sget-object v1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->TAG:Ljava/lang/String;

    const-string v2, "ipc fetch for mobile config exposure log failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public updateMCsImpl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-object v1, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mMobileConfigServiceLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-boolean v0, p0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mMobileConfigServiceConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mMobileConfigService:Lcom/oculus/aidl/IMobileConfigService;

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0, p1}, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->updateMCsAndHandleResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 86
    :goto_0
    return-object v0

    .line 84
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mShouldUpdateMCs:Z

    .line 85
    iput-object p1, p0, Lcom/oculus/config/mobileconfigclient/MobileConfigClient;->mHash:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
