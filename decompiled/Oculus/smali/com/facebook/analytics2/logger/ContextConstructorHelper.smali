.class Lcom/facebook/analytics2/logger/ContextConstructorHelper;
.super Ljava/lang/Object;
.source "ContextConstructorHelper.java"


# static fields
.field private static sInstance:Lcom/facebook/analytics2/logger/ContextConstructorHelper;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExistingHandlerThreadFactories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/analytics2/logger/HandlerThreadFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final mExistingSamplingPolicyConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/flexiblesampling/SamplingPolicyConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mExistingUploadJobInstrumenters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/analytics2/logger/UploadJobInstrumentation;",
            ">;"
        }
    .end annotation
.end field

.field private final mExistingUploaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/analytics2/logger/Uploader;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrivacyPolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/analytics2/logger/PrivacyPolicy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->mExistingSamplingPolicyConfigs:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->mExistingHandlerThreadFactories:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->mExistingUploaders:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->mExistingUploadJobInstrumenters:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->mPrivacyPolicies:Ljava/util/ArrayList;

    .line 55
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/ContextConstructorHelper;
    .locals 3

    .prologue
    .line 28
    const-class v1, Lcom/facebook/analytics2/logger/ContextConstructorHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->sInstance:Lcom/facebook/analytics2/logger/ContextConstructorHelper;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->sInstance:Lcom/facebook/analytics2/logger/ContextConstructorHelper;

    .line 31
    :cond_0
    sget-object v0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->sInstance:Lcom/facebook/analytics2/logger/ContextConstructorHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getProvidedClassInstance(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+TT;>;)TT;"
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

    .prologue
    const/4 v0, 0x0

    .line 91
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    .line 92
    :goto_0
    if-ge v1, v2, :cond_1

    .line 93
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    :goto_1
    monitor-exit p0

    return-object v0

    .line 92
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 98
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 99
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->mContext:Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getProvidedClassInstanceSimplified(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;",
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

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 110
    monitor-enter p0

    .line 111
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 110
    invoke-direct {p0, p1, v0}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getProvidedClassInstance(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 115
    :goto_0
    monitor-exit p0

    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 114
    :try_start_1
    const-string v1, "ContextConstructorHelper"

    const-string v2, "Cannot find class: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    const/4 v0, 0x0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized tryGetProvidedClassInstanceSimplified(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 127
    invoke-direct {p0, p1, v0}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getProvidedClassInstance(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 141
    :goto_0
    monitor-exit p0

    return-object v0

    .line 129
    :catch_0
    move-exception v0

    .line 131
    :try_start_1
    const-string v1, "ContextConstructorHelper"

    const-string v2, "Cannot find class: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 132
    :catch_1
    move-exception v0

    .line 133
    const-string v1, "ContextConstructorHelper"

    const-string v2, "IllegalAccessException"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 134
    :catch_2
    move-exception v0

    .line 135
    :try_start_2
    const-string v1, "ContextConstructorHelper"

    const-string v2, "InstantiationException"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 136
    :catch_3
    move-exception v0

    .line 137
    const-string v1, "ContextConstructorHelper"

    const-string v2, "NoSuchMethodException"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 138
    :catch_4
    move-exception v0

    .line 139
    const-string v1, "ContextConstructorHelper"

    const-string v2, "InvocationTargetException"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public getProvidedHandlerThreadFactory(Ljava/lang/String;)Lcom/facebook/analytics2/logger/HandlerThreadFactory;
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->mExistingHandlerThreadFactories:Ljava/util/ArrayList;

    .line 67
    invoke-direct {p0, v0, p1}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->tryGetProvidedClassInstanceSimplified(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/HandlerThreadFactory;

    .line 69
    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/facebook/analytics2/logger/DefaultHandlerThreadFactory;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/analytics2/logger/DefaultHandlerThreadFactory;-><init>(Landroid/content/Context;)V

    .line 71
    const-string v1, "ContextConstructorHelper"

    const-string v2, "Unable to create instance for HandlerThreadFactory"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    return-object v0
.end method

.method public getProvidedPrivacyPolicy(Ljava/lang/String;)Lcom/facebook/analytics2/logger/PrivacyPolicy;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->mPrivacyPolicies:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->tryGetProvidedClassInstanceSimplified(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/PrivacyPolicy;

    return-object v0
.end method

.method public getProvidedSamplingPolicyConfig(Ljava/lang/String;)Lcom/facebook/flexiblesampling/SamplingPolicyConfig;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->mExistingSamplingPolicyConfigs:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->tryGetProvidedClassInstanceSimplified(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/flexiblesampling/SamplingPolicyConfig;

    return-object v0
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

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->mExistingUploaders:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getProvidedClassInstanceSimplified(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/Uploader;

    return-object v0
.end method

.method public getUploadJobInstrumentation(Ljava/lang/String;)Lcom/facebook/analytics2/logger/UploadJobInstrumentation;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->mExistingUploadJobInstrumenters:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->tryGetProvidedClassInstanceSimplified(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/UploadJobInstrumentation;

    return-object v0
.end method
