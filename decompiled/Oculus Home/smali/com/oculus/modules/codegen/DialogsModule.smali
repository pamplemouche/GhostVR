.class public abstract Lcom/oculus/modules/codegen/DialogsModule;
.super Ljava/lang/Object;
.source "DialogsModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;,
        Lcom/oculus/modules/codegen/DialogsModule$DialogInlineImage;,
        Lcom/oculus/modules/codegen/DialogsModule$DialogIconButton;,
        Lcom/oculus/modules/codegen/DialogsModule$DialogButton;,
        Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;,
        Lcom/oculus/modules/codegen/DialogsModule$DialogResult;,
        Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;
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
    const-class v0, Lcom/oculus/modules/codegen/DialogsModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/codegen/DialogsModule;->MODULE_NAME:Ljava/lang/String;

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
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/modules/codegen/DialogsModule;->nativeInvokeCallback(JILjava/lang/String;)V

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

    const-string v2, "hideDialog"

    const-string v3, "+sii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Landroid/util/Pair;

    const-string v2, "showDialog"

    const-string v3, "+jii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-object v0
.end method

.method private static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method private static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method protected final emitOnDialogResult(Lcom/oculus/modules/codegen/DialogsModule$DialogResult;)V
    .locals 4
    .param p1, "data"    # Lcom/oculus/modules/codegen/DialogsModule$DialogResult;

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/oculus/modules/codegen/DialogsModule;->RVRCtxTag:J

    const-string v2, "DialogsModule_onDialogResult"

    invoke-virtual {p1}, Lcom/oculus/modules/codegen/DialogsModule$DialogResult;->convertToJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/modules/codegen/DialogsModule;->nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method protected final getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/oculus/modules/codegen/DialogsModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected final hideDialog(Ljava/lang/String;II)V
    .locals 1
    .param p1, "dialogId"    # Ljava/lang/String;
    .param p2, "resolveID"    # I
    .param p3, "rejectID"    # I

    .prologue
    .line 47
    new-instance v0, Lcom/oculus/modules/codegen/DialogsModule$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/oculus/modules/codegen/DialogsModule$1;-><init>(Lcom/oculus/modules/codegen/DialogsModule;II)V

    .line 62
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    invoke-virtual {p0, p1, v0}, Lcom/oculus/modules/codegen/DialogsModule;->hideDialogImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 63
    return-void
.end method

.method protected abstract hideDialogImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
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

.method protected final marshallJSConstants()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 39
    .local v0, "result":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final showDialog(Lorg/json/JSONObject;II)V
    .locals 2
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "resolveID"    # I
    .param p3, "rejectID"    # I

    .prologue
    .line 65
    new-instance v0, Lcom/oculus/modules/codegen/DialogsModule$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/oculus/modules/codegen/DialogsModule$2;-><init>(Lcom/oculus/modules/codegen/DialogsModule;II)V

    .line 80
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    invoke-static {p1}, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/oculus/modules/codegen/DialogsModule;->showDialogImpl(Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;Lcom/oculus/modules/codegen/Resolver;)V

    .line 81
    return-void
.end method

.method protected abstract showDialogImpl(Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;",
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
    .line 82
    return-void
.end method
