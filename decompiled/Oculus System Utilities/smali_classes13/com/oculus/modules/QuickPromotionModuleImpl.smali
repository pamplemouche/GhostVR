.class public Lcom/oculus/modules/QuickPromotionModuleImpl;
.super Lcom/oculus/modules/codegen/QuickPromotionModule;
.source "QuickPromotionModuleImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;
    }
.end annotation


# static fields
.field private static final SHARED_PREF_KEY_ROOT_PROMOTIONS_BY_SURFACE:Ljava/lang/String; = "/promotions/"

.field private static final SHARED_PREF_KEY_ROOT_PROMOTIONS_BY_SURFACE_DIRTY_FLAG:Ljava/lang/String; = "/promotions/dirty/"

.field private static final SHARED_PREF_NAME:Ljava/lang/String; = "quick_promotion_preferences"

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/oculus/modules/QuickPromotionModuleImpl;

.field private static final mInstanceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static mInterceptor:Lokhttp3/Interceptor;


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mEnabled:Z

.field private mEnabledSurfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private final mLocale:Ljava/lang/String;

.field private mOkHttpClient:Lokhttp3/OkHttpClient;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSurfacePriorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    const-class v0, Lcom/oculus/modules/codegen/QuickPromotionModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/QuickPromotionModuleImpl;->TAG:Ljava/lang/String;

    .line 37
    sput-object v1, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInterceptor:Lokhttp3/Interceptor;

    .line 38
    sput-object v1, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInstance:Lcom/oculus/modules/QuickPromotionModuleImpl;

    .line 39
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    sput-object v0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Lcom/oculus/modules/codegen/QuickPromotionModule;-><init>()V

    .line 44
    iput-boolean v2, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInitialized:Z

    .line 45
    iput-boolean v2, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mEnabled:Z

    .line 47
    iput-object v3, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mEnabledSurfaces:Ljava/util/HashMap;

    .line 48
    iput-object v3, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mSurfacePriorityList:Ljava/util/List;

    .line 51
    invoke-static {p1}, Lcom/oculus/modules/QuickPromotionModuleImpl;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v0, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 54
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 57
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mLocale:Ljava/lang/String;

    .line 59
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v4, 0x6

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 60
    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 62
    .local v1, "okHttpClientBuilder":Lokhttp3/OkHttpClient$Builder;
    sget-object v2, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 64
    :try_start_0
    sput-object p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInstance:Lcom/oculus/modules/QuickPromotionModuleImpl;

    .line 65
    sget-object v2, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInterceptor:Lokhttp3/Interceptor;

    if-eqz v2, :cond_1

    .line 66
    sget-object v2, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInterceptor:Lokhttp3/Interceptor;

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    sget-object v2, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 72
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    iput-object v2, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 73
    return-void

    .line 69
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/oculus/modules/QuickPromotionModuleImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/modules/QuickPromotionModuleImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oculus/modules/QuickPromotionModuleImpl;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/oculus/modules/QuickPromotionModuleImpl;->invalidateCacheForSurface(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/modules/QuickPromotionModuleImpl;ILorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/oculus/modules/QuickPromotionModuleImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/json/JSONArray;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/oculus/modules/QuickPromotionModuleImpl;->storeListInSharedPreferences(ILorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/modules/QuickPromotionModuleImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/modules/QuickPromotionModuleImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/oculus/modules/QuickPromotionModuleImpl;->signalTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fetchForAllSurfaces(Landroid/content/Context;Lokhttp3/OkHttpClient;Ljava/lang/String;Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "application"    # Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;
    .param p4, "callback"    # Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;

    .prologue
    .line 151
    sget-object v3, Lcom/oculus/modules/QuickPromotionModuleImpl;->TAG:Ljava/lang/String;

    const-string v4, "Fetching Quick Promotions for all surfaces."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {}, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogging;->logOverallFetchStart()V

    .line 155
    new-instance v1, Lcom/oculus/modules/QuickPromotionModuleImpl;

    invoke-direct {v1, p0}, Lcom/oculus/modules/QuickPromotionModuleImpl;-><init>(Landroid/content/Context;)V

    .line 156
    .local v1, "module":Lcom/oculus/modules/QuickPromotionModuleImpl;
    const/4 v3, 0x1

    invoke-direct {v1, p3, v3}, Lcom/oculus/modules/QuickPromotionModuleImpl;->initialize(Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;Z)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "initializationError":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 158
    sget-object v3, Lcom/oculus/modules/QuickPromotionModuleImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initializing Quick Promotions failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v3, "initialization_failed"

    invoke-static {v3, v0}, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogging;->logOverallFetchFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetchForAllSurfaces(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 166
    :cond_0
    invoke-direct {v1, p2}, Lcom/oculus/modules/QuickPromotionModuleImpl;->setAccessToken(Ljava/lang/String;)Z

    .line 167
    if-eqz p4, :cond_1

    .line 168
    iget-object v3, v1, Lcom/oculus/modules/QuickPromotionModuleImpl;->mSurfacePriorityList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p4, v3}, Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;->setSurfaceCount(I)V

    .line 170
    :cond_1
    iget-object v3, v1, Lcom/oculus/modules/QuickPromotionModuleImpl;->mSurfacePriorityList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 171
    .local v2, "surfaceID":I
    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p4}, Lcom/oculus/modules/QuickPromotionModuleImpl;->fetchForSurface(Lokhttp3/OkHttpClient;ILjava/lang/String;Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;)V

    goto :goto_0

    .line 173
    .end local v2    # "surfaceID":I
    :cond_2
    sget-object v3, Lcom/oculus/modules/QuickPromotionModuleImpl;->TAG:Ljava/lang/String;

    const-string v4, "Fetched Quick Promotions for all surfaces."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {}, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogging;->logOverallFetchSuccess()V

    .line 176
    return-void
.end method

.method private fetchForSurface(Lokhttp3/OkHttpClient;ILjava/lang/String;Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;)V
    .locals 5
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "surfaceID"    # I
    .param p3, "trigger"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;

    .prologue
    .line 622
    invoke-static {p2, p3}, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogging;->logPromotionFetchStart(ILjava/lang/String;)V

    .line 625
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 626
    .local v1, "queryParams":Lorg/json/JSONObject;
    const-string v2, "surface_id"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :goto_0
    iget-object v2, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mAccessToken:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 633
    const-string v2, "viewer() {eligible_promotions.surface_nux_id(<surface_id>).include_holdouts(true).supports_client_filters(true) {edges {client_ttl_seconds,is_holdout,node {bypass_surface_delay,contextual_filters {clause_type,filters {extra_datas {name,required,bool_value,color_value,float_value,int_value,string_value,uri_value,},filter_type,unknown_action,value {name,required,bool_value,color_value,float_value,int_value,string_value,uri_value,},},clauses {clause_type,filters {extra_datas {name,required,bool_value,color_value,float_value,int_value,string_value,uri_value,},filter_type,unknown_action,value {name,required,bool_value,color_value,float_value,int_value,string_value,uri_value,},},clauses {clause_type,filters {extra_datas {name,required,bool_value,color_value,float_value,int_value,string_value,uri_value,},filter_type,unknown_action,value {name,required,bool_value,color_value,float_value,int_value,string_value,uri_value,},},clauses {clause_type,filters {extra_datas {name,required,bool_value,color_value,float_value,int_value,string_value,uri_value,},filter_type,unknown_action,value {name,required,bool_value,color_value,float_value,int_value,string_value,uri_value,},},clauses {clause_type,},},},},},logging_data,max_impressions,promotion_creatives {auto_size_image {dimensionless_cache_key,height,is_silhouette,mime_type,name,scale,uri,width,},content_text,dismiss_action {dismiss_promotion,limit,title_text,url,},primary_action {dismiss_promotion,limit,title_text,url,},secondary_action {dismiss_promotion,limit,title_text,url,},title_text,},promotion_id,promotion_template {name,parameters {name,required,bool_value,color_value,float_value,int_value,string_value,uri_value,}},triggers,},time_range {start,end},},},}"

    iget-object v3, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mAccessToken:Ljava/lang/String;

    new-instance v4, Lcom/oculus/modules/QuickPromotionModuleImpl$4;

    invoke-direct {v4, p0, p2, p3, p4}, Lcom/oculus/modules/QuickPromotionModuleImpl$4;-><init>(Lcom/oculus/modules/QuickPromotionModuleImpl;ILjava/lang/String;Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;)V

    invoke-static {p1, v2, v3, v1, v4}, Lcom/oculus/panellib/GraphQLUtil;->query(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/oculus/panellib/GraphQLUtil$Result;)V

    .line 728
    :cond_0
    :goto_1
    return-void

    .line 627
    .end local v1    # "queryParams":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/oculus/modules/QuickPromotionModuleImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Json error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v1, 0x0

    .restart local v1    # "queryParams":Lorg/json/JSONObject;
    goto :goto_0

    .line 719
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    const-string v2, "missing access token"

    const/4 v3, 0x0

    invoke-static {p2, p3, v2, v3}, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogging;->logPromotionFetchFailure(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    if-eqz p4, :cond_0

    .line 725
    invoke-virtual {p4}, Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;->markSurfaceComplete()V

    goto :goto_1
.end method

.method private getIDForPromotion(Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;)Ljava/lang/String;
    .locals 1
    .param p1, "promotion"    # Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;

    .prologue
    .line 735
    iget-object v0, p1, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;->promotion_id:Ljava/lang/String;

    return-object v0
.end method

.method private getLoggingDataForPromotion(Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;)Ljava/lang/String;
    .locals 1
    .param p1, "promotion"    # Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;

    .prologue
    .line 739
    iget-object v0, p1, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;->logging_data:Ljava/lang/String;

    return-object v0
.end method

.method private getPromotionsForSurface(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "surfaceID"    # I
    .param p2, "trigger"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 590
    iget-boolean v4, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mEnabled:Z

    if-nez v4, :cond_1

    move-object v2, v3

    .line 610
    :cond_0
    :goto_0
    return-object v2

    .line 594
    :cond_1
    invoke-direct {p0, p1}, Lcom/oculus/modules/QuickPromotionModuleImpl;->isCacheUpToDateForSurface(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 595
    iget-object v4, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-direct {p0, v4, p1, p2, v3}, Lcom/oculus/modules/QuickPromotionModuleImpl;->fetchForSurface(Lokhttp3/OkHttpClient;ILjava/lang/String;Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;)V

    move-object v2, v3

    .line 596
    goto :goto_0

    .line 600
    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 601
    invoke-static {p1}, Lcom/oculus/modules/QuickPromotionModuleImpl;->getSurfaceListSharedPreferenceKey(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 603
    .local v2, "promotions":Lorg/json/JSONObject;
    const-string v4, "locale"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, "cacheLocale":Ljava/lang/String;
    iget-object v4, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 605
    sget-object v4, Lcom/oculus/modules/QuickPromotionModuleImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mismatched cache locale: `"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "` vs `"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mLocale:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "`."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 606
    goto :goto_0

    .line 609
    .end local v0    # "cacheLocale":Ljava/lang/String;
    .end local v2    # "promotions":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .local v1, "exception":Lorg/json/JSONException;
    move-object v2, v3

    .line 610
    goto :goto_0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    const-string v0, "quick_promotion_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getSurfaceIDForPromotion(Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;)I
    .locals 2
    .param p1, "promotion"    # Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;

    .prologue
    .line 731
    iget-wide v0, p1, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;->surface_id:D

    double-to-int v0, v0

    return v0
.end method

.method private static getSurfaceIsDirtySharedPreferenceKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "surfaceID"    # I

    .prologue
    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/promotions/dirty/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSurfaceListSharedPreferenceKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "surfaceID"    # I

    .prologue
    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/promotions/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initialize(Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;Z)Ljava/lang/String;
    .locals 2
    .param p1, "application"    # Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 206
    iget-boolean v1, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInitialized:Z

    if-eqz v1, :cond_1

    .line 207
    const-string v0, "Already initialized."

    .line 220
    :cond_0
    :goto_0
    return-object v0

    .line 210
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInitialized:Z

    .line 211
    iput-boolean p2, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mEnabled:Z

    .line 212
    iput-object v0, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mAccessToken:Ljava/lang/String;

    .line 213
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mEnabledSurfaces:Ljava/util/HashMap;

    .line 215
    invoke-static {p1}, Lcom/oculus/panellib/quickpromotion/QuickPromotionSurfaceIDs;->getSurfacePriorityList(Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mSurfacePriorityList:Ljava/util/List;

    .line 216
    iget-object v1, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mSurfacePriorityList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to set surface priority list for application: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private invalidateCacheForSurface(I)V
    .locals 3
    .param p1, "surfaceID"    # I

    .prologue
    .line 763
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/oculus/modules/QuickPromotionModuleImpl;->storeListInSharedPreferences(ILorg/json/JSONArray;)V

    .line 764
    iget-object v0, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 765
    invoke-static {p1}, Lcom/oculus/modules/QuickPromotionModuleImpl;->getSurfaceIsDirtySharedPreferenceKey(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 766
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 767
    return-void
.end method

.method private isCacheUpToDateForSurface(I)Z
    .locals 3
    .param p1, "surfaceID"    # I

    .prologue
    const/4 v0, 0x1

    .line 743
    iget-object v1, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/oculus/modules/QuickPromotionModuleImpl;->getSurfaceIsDirtySharedPreferenceKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onLogout(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-static {p0}, Lcom/oculus/modules/QuickPromotionModuleImpl;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    .local v0, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    sget-object v1, Lcom/oculus/modules/QuickPromotionModuleImpl;->TAG:Ljava/lang/String;

    const-string v2, "Cleared Quick Promotion cache"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method private setAccessToken(Ljava/lang/String;)Z
    .locals 1
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mAccessToken:Ljava/lang/String;

    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public static setHttpClientInterceptor(Lokhttp3/Interceptor;)V
    .locals 2
    .param p0, "interceptor"    # Lokhttp3/Interceptor;

    .prologue
    .line 86
    sput-object p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInterceptor:Lokhttp3/Interceptor;

    .line 87
    sget-object v0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 89
    :try_start_0
    sget-object v0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInstance:Lcom/oculus/modules/QuickPromotionModuleImpl;

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInstance:Lcom/oculus/modules/QuickPromotionModuleImpl;

    sget-object v1, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInstance:Lcom/oculus/modules/QuickPromotionModuleImpl;

    iget-object v1, v1, Lcom/oculus/modules/QuickPromotionModuleImpl;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 91
    invoke-virtual {v1, p0}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mOkHttpClient:Lokhttp3/OkHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    sget-object v0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 97
    return-void

    .line 95
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private signalTrigger(Ljava/lang/String;)Ljava/lang/String;
    .locals 36
    .param p1, "trigger"    # Ljava/lang/String;

    .prologue
    .line 294
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInitialized:Z

    move/from16 v31, v0

    if-nez v31, :cond_0

    .line 295
    const-string v31, "[{\"message\":\"Not initialized.\"}]"

    .line 381
    :goto_0
    return-object v31

    .line 297
    :cond_0
    new-instance v18, Lorg/json/JSONArray;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONArray;-><init>()V

    .line 298
    .local v18, "potentialPromotions":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mSurfacePriorityList:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_c

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 299
    .local v25, "surfaceID":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mEnabledSurfaces:Ljava/util/HashMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 300
    .local v11, "enabled":Ljava/lang/Integer;
    if-eqz v11, :cond_1

    .line 303
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/oculus/modules/QuickPromotionModuleImpl;->getPromotionsForSurface(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 304
    .local v20, "promotionCache":Lorg/json/JSONObject;
    if-nez v20, :cond_2

    .line 305
    sget-object v31, Lcom/oculus/modules/QuickPromotionModuleImpl;->TAG:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Promotion cache empty. Refetching surface \'"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\' for trigger \'"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\'."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/16 v31, 0x0

    goto :goto_0

    .line 309
    :cond_2
    const-wide/16 v4, 0x0

    .line 311
    .local v4, "cacheTimestamp":J
    :try_start_0
    const-string v32, "timestamp"

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 316
    :goto_1
    const-string v32, "promotions"

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    .line 317
    .local v23, "promotions":Lorg/json/JSONArray;
    if-nez v23, :cond_3

    .line 318
    const-string v31, "[{\"message\":\"Json error in trigger signal: invalid promotions.\"}]"

    goto/16 :goto_0

    .line 312
    .end local v23    # "promotions":Lorg/json/JSONArray;
    :catch_0
    move-exception v10

    .line 313
    .local v10, "e":Ljava/lang/NumberFormatException;
    sget-object v32, Lcom/oculus/modules/QuickPromotionModuleImpl;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Json error in fetching timestamp: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v10}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 320
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    .restart local v23    # "promotions":Lorg/json/JSONArray;
    :cond_3
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v21

    .line 321
    .local v21, "promotionCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    move/from16 v0, v21

    if-ge v15, v0, :cond_1

    .line 322
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    .line 323
    .local v22, "promotionEdge":Lorg/json/JSONObject;
    if-nez v22, :cond_4

    .line 324
    const-string v31, "[{\"message\":\"Json error in trigger signal: invalid promotion edge.\"}]"

    goto/16 :goto_0

    .line 327
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 328
    .local v8, "currentTime":J
    const-string v32, "client_ttl_seconds"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    int-to-long v6, v0

    .line 329
    .local v6, "clientTTLSeconds":J
    const-wide/16 v32, 0x3e8

    mul-long v32, v32, v6

    add-long v32, v32, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    cmp-long v32, v32, v34

    if-gez v32, :cond_6

    .line 321
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 333
    :cond_6
    const-string v32, "time_range"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    .line 334
    .local v28, "timeRange":Lorg/json/JSONObject;
    if-nez v28, :cond_7

    .line 335
    const-string v31, "[{\"message\":\"Json error in trigger signal: invalid promotion time range.\"}]"

    goto/16 :goto_0

    .line 337
    :cond_7
    const-string v32, "start"

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    mul-long v26, v32, v34

    .line 338
    .local v26, "start":J
    const-string v32, "end"

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    mul-long v12, v32, v34

    .line 339
    .local v12, "end":J
    cmp-long v32, v8, v26

    if-ltz v32, :cond_5

    cmp-long v32, v12, v8

    if-ltz v32, :cond_5

    .line 344
    const-string v32, "is_holdout"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v16

    .line 345
    .local v16, "isHoldout":Z
    const-string v32, "node"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 346
    .local v19, "promotion":Lorg/json/JSONObject;
    if-nez v19, :cond_8

    .line 347
    const-string v31, "[{\"message\":\"Json error in trigger signal: invalid promotion node.\"}]"

    goto/16 :goto_0

    .line 350
    :cond_8
    :try_start_1
    const-string v32, "is_holdout"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 351
    const-string v32, "surface_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 356
    const-string v32, "triggers"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v30

    .line 357
    .local v30, "triggers":Lorg/json/JSONArray;
    if-nez v30, :cond_9

    .line 358
    const-string v31, "[{\"message\":\"Json error in trigger signal: no triggers.\"}]"

    goto/16 :goto_0

    .line 352
    .end local v30    # "triggers":Lorg/json/JSONArray;
    :catch_1
    move-exception v10

    .line 353
    .local v10, "e":Lorg/json/JSONException;
    sget-object v31, Lcom/oculus/modules/QuickPromotionModuleImpl;->TAG:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Json error: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v10}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string v31, "[{\"message\":\"Json error in trigger signal: unable to attach holdout status and surface ID.\"}]"

    goto/16 :goto_0

    .line 360
    .end local v10    # "e":Lorg/json/JSONException;
    .restart local v30    # "triggers":Lorg/json/JSONArray;
    :cond_9
    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONArray;->length()I

    move-result v29

    .line 361
    .local v29, "triggerCount":I
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v29

    if-ge v0, v1, :cond_5

    .line 362
    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v24

    .line 363
    .local v24, "refTrigger":Ljava/lang/String;
    if-nez v24, :cond_a

    .line 364
    const-string v31, "[{\"message\":\"Json error in trigger signal: invalid trigger.\"}]"

    goto/16 :goto_0

    .line 366
    :cond_a
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_b

    .line 367
    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 361
    :cond_b
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 373
    .end local v4    # "cacheTimestamp":J
    .end local v6    # "clientTTLSeconds":J
    .end local v8    # "currentTime":J
    .end local v11    # "enabled":Ljava/lang/Integer;
    .end local v12    # "end":J
    .end local v15    # "i":I
    .end local v16    # "isHoldout":Z
    .end local v17    # "j":I
    .end local v19    # "promotion":Lorg/json/JSONObject;
    .end local v20    # "promotionCache":Lorg/json/JSONObject;
    .end local v21    # "promotionCount":I
    .end local v22    # "promotionEdge":Lorg/json/JSONObject;
    .end local v23    # "promotions":Lorg/json/JSONArray;
    .end local v24    # "refTrigger":Ljava/lang/String;
    .end local v25    # "surfaceID":Ljava/lang/Integer;
    .end local v26    # "start":J
    .end local v28    # "timeRange":Lorg/json/JSONObject;
    .end local v29    # "triggerCount":I
    .end local v30    # "triggers":Lorg/json/JSONArray;
    :cond_c
    :try_start_2
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 374
    .local v14, "eventData":Lorg/json/JSONObject;
    const-string v31, "promotions"

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    const-string v31, "trigger"

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    invoke-static {v14}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPTryToShowEvent;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/QuickPromotionModule$QPTryToShowEvent;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/oculus/modules/QuickPromotionModuleImpl;->emitOnTryToShow(Lcom/oculus/modules/codegen/QuickPromotionModule$QPTryToShowEvent;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 381
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 377
    .end local v14    # "eventData":Lorg/json/JSONObject;
    :catch_2
    move-exception v10

    .line 378
    .restart local v10    # "e":Lorg/json/JSONException;
    sget-object v31, Lcom/oculus/modules/QuickPromotionModuleImpl;->TAG:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Json error: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v10}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v31, "[{\"message\":\"Json error in trigger signal: error sending potential promotions.\"}]"

    goto/16 :goto_0
.end method

.method private storeListInSharedPreferences(ILorg/json/JSONArray;)V
    .locals 6
    .param p1, "surfaceID"    # I
    .param p2, "promotions"    # Lorg/json/JSONArray;

    .prologue
    .line 747
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 749
    .local v1, "promotionsToStore":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "promotions"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 750
    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 751
    const-string v2, "locale"

    iget-object v3, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mLocale:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    iget-object v2, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 757
    invoke-static {p1}, Lcom/oculus/modules/QuickPromotionModuleImpl;->getSurfaceIsDirtySharedPreferenceKey(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 758
    invoke-static {p1}, Lcom/oculus/modules/QuickPromotionModuleImpl;->getSurfaceListSharedPreferenceKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 759
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 760
    :goto_0
    return-void

    .line 752
    :catch_0
    move-exception v0

    .line 753
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/oculus/modules/QuickPromotionModuleImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Json error storing promotions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected disableSurfaceImpl(DLcom/oculus/modules/codegen/Resolver;)V
    .locals 5
    .param p1, "surfaceID"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p3, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    double-to-int v1, p1

    .line 414
    .local v1, "surfaceIDInt":I
    iget-boolean v2, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInitialized:Z

    if-nez v2, :cond_0

    .line 415
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "[{\"message\":\"Not initialized.\"}]"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v2}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    .line 429
    :goto_0
    return-void

    .line 418
    :cond_0
    sget-object v2, Lcom/oculus/modules/QuickPromotionModuleImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disable surface #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v2, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mEnabledSurfaces:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 420
    .local v0, "enabled":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 421
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "[{\"message\":\"Surface not enabled.\"}]"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v2}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 423
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    .line 424
    iget-object v2, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mEnabledSurfaces:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :goto_1
    const/4 v2, 0x0

    invoke-interface {p3, v2}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 426
    :cond_2
    iget-object v2, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mEnabledSurfaces:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public enableSurfaceImpl(DLcom/oculus/modules/codegen/Resolver;)V
    .locals 5
    .param p1, "surfaceID"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 391
    .local p3, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    double-to-int v1, p1

    .line 392
    .local v1, "surfaceIDInt":I
    iget-boolean v2, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInitialized:Z

    if-nez v2, :cond_0

    .line 393
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "[{\"message\":\"Not initialized.\"}]"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v2}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    .line 403
    :goto_0
    return-void

    .line 396
    :cond_0
    sget-object v2, Lcom/oculus/modules/QuickPromotionModuleImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enable surface #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v2, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mEnabledSurfaces:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 398
    .local v0, "enabled":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 399
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 401
    :cond_1
    iget-object v2, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mEnabledSurfaces:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const/4 v2, 0x0

    invoke-interface {p3, v2}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public initializeImpl(Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;ZLcom/oculus/modules/codegen/Resolver;)V
    .locals 4
    .param p1, "application"    # Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;",
            "Z",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p3, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    sget-object v2, Lcom/oculus/modules/QuickPromotionModuleImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialized and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "enabled."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/oculus/modules/QuickPromotionModuleImpl;->initialize(Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;Z)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "initializationError":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 199
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 203
    :goto_1
    return-void

    .line 196
    .end local v0    # "initializationError":Ljava/lang/String;
    :cond_0
    const-string v1, "not "

    goto :goto_0

    .line 201
    .restart local v0    # "initializationError":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[{\"message\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"}]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v1}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected markPromotionActionImpl(Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 11
    .param p1, "promotion"    # Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;
    .param p2, "trigger"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 544
    .local p4, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    iget-boolean v0, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInitialized:Z

    if-nez v0, :cond_0

    .line 545
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "[{\"message\":\"Not initialized.\"}]"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    .line 578
    :goto_0
    return-void

    .line 548
    :cond_0
    invoke-direct {p0, p1}, Lcom/oculus/modules/QuickPromotionModuleImpl;->getSurfaceIDForPromotion(Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;)I

    move-result v7

    .line 549
    .local v7, "surfaceID":I
    invoke-direct {p0, p1}, Lcom/oculus/modules/QuickPromotionModuleImpl;->getIDForPromotion(Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;)Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, "promotionID":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/oculus/modules/QuickPromotionModuleImpl;->getLoggingDataForPromotion(Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;)Ljava/lang/String;

    move-result-object v4

    .line 552
    .local v4, "logData":Ljava/lang/String;
    invoke-static {p3, v2, v7, p2}, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogging;->logPromotionAction(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mAccessToken:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 555
    invoke-static {v2, v4, v7, p2, p3}, Lcom/oculus/panellib/quickpromotion/QuickPromotionGraphQL;->getParamsForAction(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 556
    .local v6, "queryParams":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const-string v9, "Mutation QuickPromotionLogEventData : QuickPromotionLogEventResponsePayload {quick_promotion_log_event(<input>) {client_mutation_id,}}"

    iget-object v10, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mAccessToken:Ljava/lang/String;

    new-instance v0, Lcom/oculus/modules/QuickPromotionModuleImpl$3;

    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/oculus/modules/QuickPromotionModuleImpl$3;-><init>(Lcom/oculus/modules/QuickPromotionModuleImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v9, v10, v6, v0}, Lcom/oculus/panellib/GraphQLUtil;->post(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/oculus/panellib/GraphQLUtil$Result;)V

    .line 577
    .end local v6    # "queryParams":Lorg/json/JSONObject;
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected markPromotionExposedImpl(Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 8
    .param p1, "promotion"    # Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;
    .param p2, "trigger"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p3, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    iget-boolean v4, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInitialized:Z

    if-nez v4, :cond_0

    .line 445
    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "[{\"message\":\"Not initialized.\"}]"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v4}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    .line 478
    :goto_0
    return-void

    .line 448
    :cond_0
    invoke-direct {p0, p1}, Lcom/oculus/modules/QuickPromotionModuleImpl;->getSurfaceIDForPromotion(Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;)I

    move-result v3

    .line 449
    .local v3, "surfaceID":I
    invoke-direct {p0, p1}, Lcom/oculus/modules/QuickPromotionModuleImpl;->getIDForPromotion(Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;)Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, "promotionID":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/oculus/modules/QuickPromotionModuleImpl;->getLoggingDataForPromotion(Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;)Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "logData":Ljava/lang/String;
    invoke-static {v1, v3, p2}, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogging;->logPromotionExposure(Ljava/lang/String;ILjava/lang/String;)V

    .line 454
    iget-object v4, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mAccessToken:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 455
    invoke-static {v1, v0, v3, p2}, Lcom/oculus/panellib/quickpromotion/QuickPromotionGraphQL;->getParamsForExposure(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 456
    .local v2, "queryParams":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const-string v5, "Mutation QuickPromotionLogEventData : QuickPromotionLogEventResponsePayload {quick_promotion_log_event(<input>) {client_mutation_id,}}"

    iget-object v6, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mAccessToken:Ljava/lang/String;

    new-instance v7, Lcom/oculus/modules/QuickPromotionModuleImpl$1;

    invoke-direct {v7, p0, v1, p2, v0}, Lcom/oculus/modules/QuickPromotionModuleImpl$1;-><init>(Lcom/oculus/modules/QuickPromotionModuleImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5, v6, v2, v7}, Lcom/oculus/panellib/GraphQLUtil;->post(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/oculus/panellib/GraphQLUtil$Result;)V

    .line 477
    .end local v2    # "queryParams":Lorg/json/JSONObject;
    :cond_1
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected markPromotionShownImpl(Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 8
    .param p1, "promotion"    # Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;
    .param p2, "trigger"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 493
    .local p3, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    iget-boolean v4, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInitialized:Z

    if-nez v4, :cond_0

    .line 494
    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "[{\"message\":\"Not initialized.\"}]"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v4}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    .line 527
    :goto_0
    return-void

    .line 497
    :cond_0
    invoke-direct {p0, p1}, Lcom/oculus/modules/QuickPromotionModuleImpl;->getSurfaceIDForPromotion(Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;)I

    move-result v3

    .line 498
    .local v3, "surfaceID":I
    invoke-direct {p0, p1}, Lcom/oculus/modules/QuickPromotionModuleImpl;->getIDForPromotion(Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;)Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, "promotionID":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/oculus/modules/QuickPromotionModuleImpl;->getLoggingDataForPromotion(Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;)Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "logData":Ljava/lang/String;
    invoke-static {v1, v3, p2}, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogging;->logPromotionImpression(Ljava/lang/String;ILjava/lang/String;)V

    .line 503
    iget-object v4, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mAccessToken:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 504
    invoke-static {v1, v0, v3, p2}, Lcom/oculus/panellib/quickpromotion/QuickPromotionGraphQL;->getParamsForView(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 505
    .local v2, "queryParams":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const-string v5, "Mutation QuickPromotionLogEventData : QuickPromotionLogEventResponsePayload {quick_promotion_log_event(<input>) {client_mutation_id,}}"

    iget-object v6, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mAccessToken:Ljava/lang/String;

    new-instance v7, Lcom/oculus/modules/QuickPromotionModuleImpl$2;

    invoke-direct {v7, p0, v1, p2, v0}, Lcom/oculus/modules/QuickPromotionModuleImpl$2;-><init>(Lcom/oculus/modules/QuickPromotionModuleImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5, v6, v2, v7}, Lcom/oculus/panellib/GraphQLUtil;->post(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/oculus/panellib/GraphQLUtil$Result;)V

    .line 526
    .end local v2    # "queryParams":Lorg/json/JSONObject;
    :cond_1
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected refetchAllSurfacesImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    const/4 v3, 0x0

    .line 250
    iget-boolean v1, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInitialized:Z

    if-nez v1, :cond_0

    .line 251
    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "[{\"message\":\"Not initialized.\"}]"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    .line 258
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mSurfacePriorityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 255
    .local v0, "surfaceID":I
    iget-object v1, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-direct {p0, v1, v0, v3, v3}, Lcom/oculus/modules/QuickPromotionModuleImpl;->fetchForSurface(Lokhttp3/OkHttpClient;ILjava/lang/String;Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;)V

    goto :goto_1

    .line 257
    .end local v0    # "surfaceID":I
    :cond_1
    invoke-interface {p1, v3}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected refetchSurfaceImpl(DLcom/oculus/modules/codegen/Resolver;)V
    .locals 3
    .param p1, "surfaceID"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    const/4 v2, 0x0

    .line 268
    iget-boolean v0, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInitialized:Z

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "[{\"message\":\"Not initialized.\"}]"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mOkHttpClient:Lokhttp3/OkHttpClient;

    double-to-int v1, p1

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/oculus/modules/QuickPromotionModuleImpl;->fetchForSurface(Lokhttp3/OkHttpClient;ILjava/lang/String;Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;)V

    .line 273
    invoke-interface {p3, v2}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setAccessTokenImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .param p1, "accessToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p2, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    sget-object v0, Lcom/oculus/modules/QuickPromotionModuleImpl;->TAG:Ljava/lang/String;

    const-string v1, "Set access token."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-direct {p0, p1}, Lcom/oculus/modules/QuickPromotionModuleImpl;->setAccessToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "[{\"message\":\"Failed to set access token.\"}]"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public shutdownModule()V
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 79
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInstance:Lcom/oculus/modules/QuickPromotionModuleImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    sget-object v0, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 83
    return-void

    .line 81
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/oculus/modules/QuickPromotionModuleImpl;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected signalTriggerImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 4
    .param p1, "trigger"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p2, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    sget-object v1, Lcom/oculus/modules/QuickPromotionModuleImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signal trigger \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-direct {p0, p1}, Lcom/oculus/modules/QuickPromotionModuleImpl;->signalTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 287
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    goto :goto_0
.end method
