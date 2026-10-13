.class public Lcom/facebook/stetho/Stetho;
.super Ljava/lang/Object;
.source "Stetho.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/stetho/Stetho$BuilderBasedInitializer;,
        Lcom/facebook/stetho/Stetho$InitializerBuilder;,
        Lcom/facebook/stetho/Stetho$Initializer;,
        Lcom/facebook/stetho/Stetho$DefaultInspectorModulesBuilder;,
        Lcom/facebook/stetho/Stetho$DefaultDumperPluginsBuilder;,
        Lcom/facebook/stetho/Stetho$PluginBuilder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public static defaultInspectorModulesProvider(Landroid/content/Context;)Lcom/facebook/stetho/InspectorModulesProvider;
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/facebook/stetho/Stetho$3;

    invoke-direct {v0, p0}, Lcom/facebook/stetho/Stetho$3;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static initialize(Lcom/facebook/stetho/Stetho$Initializer;)V
    .locals 2

    .prologue
    .line 127
    invoke-static {}, Lcom/facebook/stetho/inspector/elements/android/ActivityTracker;->get()Lcom/facebook/stetho/inspector/elements/android/ActivityTracker;

    move-result-object v1

    .line 128
    invoke-static {p0}, Lcom/facebook/stetho/Stetho$Initializer;->access$100(Lcom/facebook/stetho/Stetho$Initializer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 127
    invoke-virtual {v1, v0}, Lcom/facebook/stetho/inspector/elements/android/ActivityTracker;->beginTrackingIfPossible(Landroid/app/Application;)Z

    move-result v0

    .line 129
    if-nez v0, :cond_0

    .line 130
    const-string v0, "Automatic activity tracking not available on this API level, caller must invoke ActivityTracker methods manually!"

    invoke-static {v0}, Lcom/facebook/stetho/common/LogUtil;->w(Ljava/lang/String;)V

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/stetho/Stetho$Initializer;->start()V

    .line 135
    return-void
.end method

.method public static newInitializerBuilder(Landroid/content/Context;)Lcom/facebook/stetho/Stetho$InitializerBuilder;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lcom/facebook/stetho/Stetho$InitializerBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/stetho/Stetho$InitializerBuilder;-><init>(Landroid/content/Context;Lcom/facebook/stetho/Stetho$1;)V

    return-object v0
.end method
