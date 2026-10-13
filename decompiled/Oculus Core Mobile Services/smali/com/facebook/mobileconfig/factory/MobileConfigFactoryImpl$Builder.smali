.class public Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$Builder;
.super Ljava/lang/Object;
.source "MobileConfigFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mInstance:Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;


# direct methods
.method private constructor <init>(Lcom/facebook/mobileconfig/MobileConfigManagerHolder;Lcom/facebook/mobileconfig/factory/MobileConfigEmergencyPush;Z)V
    .locals 2

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;-><init>(Lcom/facebook/mobileconfig/MobileConfigManagerHolder;Lcom/facebook/mobileconfig/factory/MobileConfigEmergencyPush;ZLcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$1;)V

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$Builder;->mInstance:Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/mobileconfig/MobileConfigManagerHolder;Lcom/facebook/mobileconfig/factory/MobileConfigEmergencyPush;ZLcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$1;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$Builder;-><init>(Lcom/facebook/mobileconfig/MobileConfigManagerHolder;Lcom/facebook/mobileconfig/factory/MobileConfigEmergencyPush;Z)V

    return-void
.end method


# virtual methods
.method public assetManager(Landroid/content/res/AssetManager;)Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$Builder;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$Builder;->mInstance:Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;

    invoke-static {v0, p1}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->access$202(Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;Landroid/content/res/AssetManager;)Landroid/content/res/AssetManager;

    .line 142
    return-object p0
.end method

.method public build()Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;
    .locals 3

    .prologue
    .line 176
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$Builder;->mInstance:Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;

    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$Builder;->mInstance:Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;

    invoke-static {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->access$600(Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;)Lcom/facebook/mobileconfig/MobileConfigUserIdProvider;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->access$902(Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;Z)Z

    .line 177
    const-string v0, "MobileConfigFactoryImpl"

    const-string v1, "Created MobileConfigFactoryImpl, isSessionless:%s"

    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$Builder;->mInstance:Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;

    invoke-static {v2}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->access$900(Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$Builder;->mInstance:Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;

    invoke-static {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->access$300(Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;)Lcom/facebook/mobileconfig/factory/MobileConfigSampledAccessListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$Builder;->mInstance:Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;

    new-instance v1, Lcom/facebook/mobileconfig/factory/MobileConfigSampledAccessListenerStub;

    invoke-direct {v1}, Lcom/facebook/mobileconfig/factory/MobileConfigSampledAccessListenerStub;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->access$302(Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;Lcom/facebook/mobileconfig/factory/MobileConfigSampledAccessListener;)Lcom/facebook/mobileconfig/factory/MobileConfigSampledAccessListener;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$Builder;->mInstance:Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;

    return-object v0

    .line 176
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dataDir(Ljava/io/File;)Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$Builder;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$Builder;->mInstance:Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;

    invoke-static {v0, p1}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->access$102(Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;Ljava/io/File;)Ljava/io/File;

    .line 137
    return-object p0
.end method

.method public userIdProvider(Lcom/facebook/mobileconfig/MobileConfigUserIdProvider;)Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$Builder;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl$Builder;->mInstance:Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;

    invoke-static {v0, p1}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->access$602(Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;Lcom/facebook/mobileconfig/MobileConfigUserIdProvider;)Lcom/facebook/mobileconfig/MobileConfigUserIdProvider;

    .line 159
    return-object p0
.end method
