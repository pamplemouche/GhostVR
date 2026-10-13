.class public abstract Lcom/oculus/modules/codegen/ToasterModule;
.super Ljava/lang/Object;
.source "ToasterModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/modules/codegen/ToasterModule$BadgeInfo;,
        Lcom/oculus/modules/codegen/ToasterModule$Bread;
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
    const-class v0, Lcom/oculus/modules/codegen/ToasterModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/codegen/ToasterModule;->MODULE_NAME:Ljava/lang/String;

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
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/modules/codegen/ToasterModule;->nativeInvokeCallback(JILjava/lang/String;)V

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

    const-string v2, "createToast"

    const-string v3, "+djii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Landroid/util/Pair;

    const-string v2, "dismissBadge"

    const-string v3, "+dii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Landroid/util/Pair;

    const-string v2, "showBadge"

    const-string v3, "+djii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-object v0
.end method

.method private static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method private static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method protected final createToast(DLorg/json/JSONObject;II)V
    .locals 3
    .param p1, "toastID"    # D
    .param p3, "bread"    # Lorg/json/JSONObject;
    .param p4, "resolveID"    # I
    .param p5, "rejectID"    # I

    .prologue
    .line 43
    new-instance v0, Lcom/oculus/modules/codegen/ToasterModule$1;

    invoke-direct {v0, p0, p4, p5}, Lcom/oculus/modules/codegen/ToasterModule$1;-><init>(Lcom/oculus/modules/codegen/ToasterModule;II)V

    .line 58
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    invoke-static {p3}, Lcom/oculus/modules/codegen/ToasterModule$Bread;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/ToasterModule$Bread;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/oculus/modules/codegen/ToasterModule;->createToastImpl(DLcom/oculus/modules/codegen/ToasterModule$Bread;Lcom/oculus/modules/codegen/Resolver;)V

    .line 59
    return-void
.end method

.method protected abstract createToastImpl(DLcom/oculus/modules/codegen/ToasterModule$Bread;Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lcom/oculus/modules/codegen/ToasterModule$Bread;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final dismissBadge(DII)V
    .locals 1
    .param p1, "badgeID"    # D
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 61
    new-instance v0, Lcom/oculus/modules/codegen/ToasterModule$2;

    invoke-direct {v0, p0, p3, p4}, Lcom/oculus/modules/codegen/ToasterModule$2;-><init>(Lcom/oculus/modules/codegen/ToasterModule;II)V

    .line 76
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/modules/codegen/ToasterModule;->dismissBadgeImpl(DLcom/oculus/modules/codegen/Resolver;)V

    .line 77
    return-void
.end method

.method protected abstract dismissBadgeImpl(DLcom/oculus/modules/codegen/Resolver;)V
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
    sget-object v0, Lcom/oculus/modules/codegen/ToasterModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected final marshallJSConstants()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 37
    .local v0, "result":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final showBadge(DLorg/json/JSONObject;II)V
    .locals 3
    .param p1, "badgeID"    # D
    .param p3, "badgeInfo"    # Lorg/json/JSONObject;
    .param p4, "resolveID"    # I
    .param p5, "rejectID"    # I

    .prologue
    .line 79
    new-instance v0, Lcom/oculus/modules/codegen/ToasterModule$3;

    invoke-direct {v0, p0, p4, p5}, Lcom/oculus/modules/codegen/ToasterModule$3;-><init>(Lcom/oculus/modules/codegen/ToasterModule;II)V

    .line 94
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    invoke-static {p3}, Lcom/oculus/modules/codegen/ToasterModule$BadgeInfo;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/ToasterModule$BadgeInfo;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/oculus/modules/codegen/ToasterModule;->showBadgeImpl(DLcom/oculus/modules/codegen/ToasterModule$BadgeInfo;Lcom/oculus/modules/codegen/Resolver;)V

    .line 95
    return-void
.end method

.method protected abstract showBadgeImpl(DLcom/oculus/modules/codegen/ToasterModule$BadgeInfo;Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lcom/oculus/modules/codegen/ToasterModule$BadgeInfo;",
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
    .line 96
    return-void
.end method
