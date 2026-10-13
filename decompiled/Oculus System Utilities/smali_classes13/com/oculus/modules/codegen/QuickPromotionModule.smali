.class public abstract Lcom/oculus/modules/codegen/QuickPromotionModule;
.super Ljava/lang/Object;
.source "QuickPromotionModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/modules/codegen/QuickPromotionModule$QPTemplate;,
        Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;,
        Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;,
        Lcom/oculus/modules/codegen/QuickPromotionModule$QPCreative;,
        Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotionContextual_filtersClausesClausesClausesClauses;,
        Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotionContextual_filtersClausesClausesClauses;,
        Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotionContextual_filtersClausesClauses;,
        Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotionContextual_filtersClauses;,
        Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;,
        Lcom/oculus/modules/codegen/QuickPromotionModule$QPFilter;,
        Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotionContextual_filters;,
        Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;,
        Lcom/oculus/modules/codegen/QuickPromotionModule$QPTryToShowEvent;,
        Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;
    }
.end annotation


# static fields
.field protected static final MODULE_NAME:Ljava/lang/String;


# instance fields
.field public RVRCtxTag:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/oculus/modules/codegen/QuickPromotionModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/codegen/QuickPromotionModule;->MODULE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(JILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/modules/codegen/QuickPromotionModule;->nativeInvokeCallback(JILjava/lang/String;)V

    return-void
.end method

.method protected static final describe()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "disableSurface"

    const-string v3, "+dii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Landroid/util/Pair;

    const-string v2, "enableSurface"

    const-string v3, "+dii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Landroid/util/Pair;

    const-string v2, "initialize"

    const-string v3, "+sbii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v1, Landroid/util/Pair;

    const-string v2, "markPromotionAction"

    const-string v3, "+jssii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Landroid/util/Pair;

    const-string v2, "markPromotionExposed"

    const-string v3, "+jsii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Landroid/util/Pair;

    const-string v2, "markPromotionShown"

    const-string v3, "+jsii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Landroid/util/Pair;

    const-string v2, "refetchAllSurfaces"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Landroid/util/Pair;

    const-string v2, "refetchSurface"

    const-string v3, "+dii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Landroid/util/Pair;

    const-string v2, "setAccessToken"

    const-string v3, "+sii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Landroid/util/Pair;

    const-string v2, "signalTrigger"

    const-string v3, "+sii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-object v0
.end method

.method private static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method private static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method protected final disableSurface(DII)V
    .locals 1
    .param p1, "surfaceID"    # D
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 63
    new-instance v0, Lcom/oculus/modules/codegen/QuickPromotionModule$1;

    invoke-direct {v0, p0, p3, p4}, Lcom/oculus/modules/codegen/QuickPromotionModule$1;-><init>(Lcom/oculus/modules/codegen/QuickPromotionModule;II)V

    .line 78
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/modules/codegen/QuickPromotionModule;->disableSurfaceImpl(DLcom/oculus/modules/codegen/Resolver;)V

    .line 79
    return-void
.end method

.method protected abstract disableSurfaceImpl(DLcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final emitOnTryToShow(Lcom/oculus/modules/codegen/QuickPromotionModule$QPTryToShowEvent;)V
    .locals 4
    .param p1, "data"    # Lcom/oculus/modules/codegen/QuickPromotionModule$QPTryToShowEvent;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule;->RVRCtxTag:J

    const-string v2, "QuickPromotionModule_onTryToShow"

    invoke-virtual {p1}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPTryToShowEvent;->convertToJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/modules/codegen/QuickPromotionModule;->nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method protected final enableSurface(DII)V
    .locals 1
    .param p1, "surfaceID"    # D
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 81
    new-instance v0, Lcom/oculus/modules/codegen/QuickPromotionModule$2;

    invoke-direct {v0, p0, p3, p4}, Lcom/oculus/modules/codegen/QuickPromotionModule$2;-><init>(Lcom/oculus/modules/codegen/QuickPromotionModule;II)V

    .line 96
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/modules/codegen/QuickPromotionModule;->enableSurfaceImpl(DLcom/oculus/modules/codegen/Resolver;)V

    .line 97
    return-void
.end method

.method protected abstract enableSurfaceImpl(DLcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/oculus/modules/codegen/QuickPromotionModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected final initialize(Ljava/lang/String;ZII)V
    .locals 2
    .param p1, "application"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 99
    new-instance v0, Lcom/oculus/modules/codegen/QuickPromotionModule$3;

    invoke-direct {v0, p0, p3, p4}, Lcom/oculus/modules/codegen/QuickPromotionModule$3;-><init>(Lcom/oculus/modules/codegen/QuickPromotionModule;II)V

    .line 114
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    invoke-static {p1}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;->valueOf(Ljava/lang/String;)Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v0}, Lcom/oculus/modules/codegen/QuickPromotionModule;->initializeImpl(Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;ZLcom/oculus/modules/codegen/Resolver;)V

    .line 115
    return-void
.end method

.method protected abstract initializeImpl(Lcom/oculus/modules/codegen/QuickPromotionModule$QPApplication;ZLcom/oculus/modules/codegen/Resolver;)V
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
.end method

.method protected final markPromotionAction(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "promotion"    # Lorg/json/JSONObject;
    .param p2, "trigger"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "resolveID"    # I
    .param p5, "rejectID"    # I

    .prologue
    .line 117
    new-instance v0, Lcom/oculus/modules/codegen/QuickPromotionModule$4;

    invoke-direct {v0, p0, p4, p5}, Lcom/oculus/modules/codegen/QuickPromotionModule$4;-><init>(Lcom/oculus/modules/codegen/QuickPromotionModule;II)V

    .line 132
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    invoke-static {p1}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/oculus/modules/codegen/QuickPromotionModule;->markPromotionActionImpl(Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 133
    return-void
.end method

.method protected abstract markPromotionActionImpl(Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
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
.end method

.method protected final markPromotionExposed(Lorg/json/JSONObject;Ljava/lang/String;II)V
    .locals 2
    .param p1, "promotion"    # Lorg/json/JSONObject;
    .param p2, "trigger"    # Ljava/lang/String;
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 135
    new-instance v0, Lcom/oculus/modules/codegen/QuickPromotionModule$5;

    invoke-direct {v0, p0, p3, p4}, Lcom/oculus/modules/codegen/QuickPromotionModule$5;-><init>(Lcom/oculus/modules/codegen/QuickPromotionModule;II)V

    .line 150
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    invoke-static {p1}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v0}, Lcom/oculus/modules/codegen/QuickPromotionModule;->markPromotionExposedImpl(Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 151
    return-void
.end method

.method protected abstract markPromotionExposedImpl(Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
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
.end method

.method protected final markPromotionShown(Lorg/json/JSONObject;Ljava/lang/String;II)V
    .locals 2
    .param p1, "promotion"    # Lorg/json/JSONObject;
    .param p2, "trigger"    # Ljava/lang/String;
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 153
    new-instance v0, Lcom/oculus/modules/codegen/QuickPromotionModule$6;

    invoke-direct {v0, p0, p3, p4}, Lcom/oculus/modules/codegen/QuickPromotionModule$6;-><init>(Lcom/oculus/modules/codegen/QuickPromotionModule;II)V

    .line 168
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    invoke-static {p1}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v0}, Lcom/oculus/modules/codegen/QuickPromotionModule;->markPromotionShownImpl(Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 169
    return-void
.end method

.method protected abstract markPromotionShownImpl(Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
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
.end method

.method protected final marshallJSConstants()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 47
    .local v0, "result":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final refetchAllSurfaces(II)V
    .locals 1
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 171
    new-instance v0, Lcom/oculus/modules/codegen/QuickPromotionModule$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/modules/codegen/QuickPromotionModule$7;-><init>(Lcom/oculus/modules/codegen/QuickPromotionModule;II)V

    .line 186
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/QuickPromotionModule;->refetchAllSurfacesImpl(Lcom/oculus/modules/codegen/Resolver;)V

    .line 187
    return-void
.end method

.method protected abstract refetchAllSurfacesImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final refetchSurface(DII)V
    .locals 1
    .param p1, "surfaceID"    # D
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 189
    new-instance v0, Lcom/oculus/modules/codegen/QuickPromotionModule$8;

    invoke-direct {v0, p0, p3, p4}, Lcom/oculus/modules/codegen/QuickPromotionModule$8;-><init>(Lcom/oculus/modules/codegen/QuickPromotionModule;II)V

    .line 204
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/modules/codegen/QuickPromotionModule;->refetchSurfaceImpl(DLcom/oculus/modules/codegen/Resolver;)V

    .line 205
    return-void
.end method

.method protected abstract refetchSurfaceImpl(DLcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final setAccessToken(Ljava/lang/String;II)V
    .locals 1
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "resolveID"    # I
    .param p3, "rejectID"    # I

    .prologue
    .line 207
    new-instance v0, Lcom/oculus/modules/codegen/QuickPromotionModule$9;

    invoke-direct {v0, p0, p2, p3}, Lcom/oculus/modules/codegen/QuickPromotionModule$9;-><init>(Lcom/oculus/modules/codegen/QuickPromotionModule;II)V

    .line 222
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    invoke-virtual {p0, p1, v0}, Lcom/oculus/modules/codegen/QuickPromotionModule;->setAccessTokenImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 223
    return-void
.end method

.method protected abstract setAccessTokenImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
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
.end method

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method protected final signalTrigger(Ljava/lang/String;II)V
    .locals 1
    .param p1, "trigger"    # Ljava/lang/String;
    .param p2, "resolveID"    # I
    .param p3, "rejectID"    # I

    .prologue
    .line 225
    new-instance v0, Lcom/oculus/modules/codegen/QuickPromotionModule$10;

    invoke-direct {v0, p0, p2, p3}, Lcom/oculus/modules/codegen/QuickPromotionModule$10;-><init>(Lcom/oculus/modules/codegen/QuickPromotionModule;II)V

    .line 240
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    invoke-virtual {p0, p1, v0}, Lcom/oculus/modules/codegen/QuickPromotionModule;->signalTriggerImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 241
    return-void
.end method

.method protected abstract signalTriggerImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
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
.end method
