.class Lcom/facebook/analytics2/logger/ContextConstructorHelper;
.super Ljava/lang/Object;
.source "ContextConstructorHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextConstructorHelper"

.field private static sInstance:Lcom/facebook/analytics2/logger/ContextConstructorHelper;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExistingHandlerThreadFactories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/analytics2/logger/HandlerThreadFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final mExistingSamplingPolicyConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/flexiblesampling/SamplingPolicyConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mExistingUploadJobInstrumenters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/analytics2/logger/UploadJobInstrumentation;",
            ">;"
        }
    .end annotation
.end field

.field private final mExistingUploaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/analytics2/logger/Uploader;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrivacyPolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/analytics2/logger/PrivacyPolicy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->mContext:Landroid/content/Context;

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->mExistingSamplingPolicyConfigs:Ljava/util/ArrayList;

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->mExistingHandlerThreadFactories:Ljava/util/ArrayList;

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->mExistingUploaders:Ljava/util/ArrayList;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->mExistingUploadJobInstrumenters:Ljava/util/ArrayList;

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->mPrivacyPolicies:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/ContextConstructorHelper;
    .locals 2

    const-class v0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->sInstance:Lcom/facebook/analytics2/logger/ContextConstructorHelper;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/facebook/analytics2/logger/ContextConstructorHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->sInstance:Lcom/facebook/analytics2/logger/ContextConstructorHelper;

    .line 31
    :cond_0
    sget-object p0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->sInstance:Lcom/facebook/analytics2/logger/ContextConstructorHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized getProvidedClassInstance(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    monitor-enter p0

    .line 91
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 93
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 94
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 95
    monitor-exit p0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 98
    :try_start_1
    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v1

    invoke-virtual {p2, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    .line 99
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 100
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getProvidedClassInstanceSimplified(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 111
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 110
    invoke-direct {p0, p1, v0}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getProvidedClassInstance(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "ContextConstructorHelper"

    const-string v1, "Cannot find class: %s"

    const/4 v2, 0x1

    .line 114
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, p1, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 115
    monitor-exit p0

    return-object p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized tryGetProvidedClassInstanceSimplified(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 128
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 127
    invoke-direct {p0, p1, v1}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getProvidedClassInstance(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "ContextConstructorHelper"

    const-string v1, "InvocationTargetException"

    .line 139
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v1, v0}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "ContextConstructorHelper"

    const-string v1, "NoSuchMethodException"

    .line 137
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v1, v0}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception p1

    const-string p2, "ContextConstructorHelper"

    const-string v1, "InstantiationException"

    .line 135
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v1, v0}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_3
    move-exception p1

    const-string p2, "ContextConstructorHelper"

    const-string v1, "IllegalAccessException"

    .line 133
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v1, v0}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_4
    move-exception p1

    const-string v1, "ContextConstructorHelper"

    const-string v2, "Cannot find class: %s"

    const/4 v3, 0x1

    .line 131
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-static {v1, p1, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 p1, 0x0

    .line 141
    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getProvidedHandlerThreadFactory(Ljava/lang/String;)Lcom/facebook/analytics2/logger/HandlerThreadFactory;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->mExistingHandlerThreadFactories:Ljava/util/ArrayList;

    .line 67
    invoke-direct {p0, v0, p1}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->tryGetProvidedClassInstanceSimplified(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/analytics2/logger/HandlerThreadFactory;

    if-nez p1, :cond_0

    .line 70
    new-instance p1, Lcom/facebook/analytics2/logger/DefaultHandlerThreadFactory;

    iget-object v0, p0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/facebook/analytics2/logger/DefaultHandlerThreadFactory;-><init>(Landroid/content/Context;)V

    const-string v0, "ContextConstructorHelper"

    const-string v1, "Unable to create instance for HandlerThreadFactory"

    .line 71
    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public getProvidedPrivacyPolicy(Ljava/lang/String;)Lcom/facebook/analytics2/logger/PrivacyPolicy;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->mPrivacyPolicies:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->tryGetProvidedClassInstanceSimplified(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/analytics2/logger/PrivacyPolicy;

    return-object p1
.end method

.method public getProvidedSamplingPolicyConfig(Ljava/lang/String;)Lcom/facebook/flexiblesampling/SamplingPolicyConfig;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->mExistingSamplingPolicyConfigs:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->tryGetProvidedClassInstanceSimplified(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/flexiblesampling/SamplingPolicyConfig;

    return-object p1
.end method

.method public getProvidedUploader(Ljava/lang/String;)Lcom/facebook/analytics2/logger/Uploader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->mExistingUploaders:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getProvidedClassInstanceSimplified(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/analytics2/logger/Uploader;

    return-object p1
.end method

.method public getUploadJobInstrumentation(Ljava/lang/String;)Lcom/facebook/analytics2/logger/UploadJobInstrumentation;
    .locals 1
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->mExistingUploadJobInstrumenters:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->tryGetProvidedClassInstanceSimplified(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/analytics2/logger/UploadJobInstrumentation;

    return-object p1
.end method
