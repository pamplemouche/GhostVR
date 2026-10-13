.class public Lcom/facebook/react/DebugCorePackage$$ReactModuleInfoProvider;
.super Ljava/lang/Object;
.source "DebugCorePackage$$ReactModuleInfoProvider.java"

# interfaces
.implements Lcom/facebook/react/module/model/ReactModuleInfoProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReactModuleInfos()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/module/model/ReactModuleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 15
    const-string v8, "JSCHeapCapture"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "JSCHeapCapture"

    const-string v2, "com.facebook.react.devsupport.JSCHeapCapture"

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v13, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string v0, "JSDevSupport"

    new-instance v5, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v6, "JSDevSupport"

    const-string v7, "com.facebook.react.devsupport.JSDevSupport"

    move v8, v3

    move v9, v3

    move v10, v4

    move v11, v3

    move v12, v3

    invoke-direct/range {v5 .. v12}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v13, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-object v13
.end method
