.class public Lcom/oculus/vrshell/home/module/HomeGraphQLPrefetchModule;
.super Lcom/oculus/modules/GraphQLPrefetch;
.source "HomeGraphQLPrefetchModule.java"


# static fields
.field private static MODULE_NAME:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/oculus/vrshell/home/module/HomeGraphQLPrefetchModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/module/HomeGraphQLPrefetchModule;->TAG:Ljava/lang/String;

    .line 23
    const-class v0, Lcom/oculus/modules/GraphQLPrefetch;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/module/HomeGraphQLPrefetchModule;->MODULE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/oculus/modules/GraphQLPrefetch;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/oculus/vrshell/home/module/HomeGraphQLPrefetchModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getQueries()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/utils/GraphQLPrefetchQuery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {}, Lcom/oculus/modules/ServiceModuleImpl;->getServiceType()Lcom/oculus/modules/codegen/ServiceModule$ServiceType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/oculus/modules/codegen/ServiceModule$ServiceType;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "currentService":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v6, "queriesForActiveService":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oculus/utils/GraphQLPrefetchQuery;>;"
    sget-object v0, Lcom/oculus/vrshell/home/GraphQLPrefetchConstants;->Queries:[Lcom/oculus/utils/GraphQLPrefetchQuery;

    .line 41
    .local v0, "allQueries":[Lcom/oculus/utils/GraphQLPrefetchQuery;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v0

    if-ge v3, v9, :cond_3

    .line 42
    aget-object v7, v0, v3

    .line 44
    .local v7, "query":Lcom/oculus/utils/GraphQLPrefetchQuery;
    :try_start_0
    invoke-virtual {v7}, Lcom/oculus/utils/GraphQLPrefetchQuery;->getExtra()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    .line 41
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    aget-object v9, v0, v3

    invoke-virtual {v9}, Lcom/oculus/utils/GraphQLPrefetchQuery;->getExtra()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    .local v5, "json":Lorg/json/JSONObject;
    const-string v9, "services"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 52
    const-string v9, "services"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 54
    .local v8, "services":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_0

    .line 55
    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 56
    aget-object v9, v0, v3

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 59
    .end local v4    # "j":I
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v8    # "services":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Lorg/json/JSONException;
    sget-object v9, Lcom/oculus/vrshell/home/module/HomeGraphQLPrefetchModule;->TAG:Ljava/lang/String;

    const-string v10, "Exception unpacking extras"

    invoke-static {v9, v10}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 64
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v7    # "query":Lcom/oculus/utils/GraphQLPrefetchQuery;
    :cond_3
    return-object v6
.end method

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method
