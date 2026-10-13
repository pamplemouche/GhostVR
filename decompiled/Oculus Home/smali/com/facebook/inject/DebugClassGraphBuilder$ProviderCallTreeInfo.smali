.class Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;
.super Ljava/lang/Object;
.source "DebugClassGraphBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/inject/DebugClassGraphBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderCallTreeInfo"
.end annotation


# instance fields
.field public final firstProviderCall:Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;

.field public final providerCallStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;",
            ">;"
        }
    .end annotation
.end field

.field public final stackTraceLines:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;[Ljava/lang/String;)V
    .locals 1
    .param p1, "givenFirstProviderCall"    # Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;
    .param p2, "givenStackTraceLines"    # [Ljava/lang/String;

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;->providerCallStack:Ljava/util/Stack;

    .line 178
    iput-object p1, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;->firstProviderCall:Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;

    .line 179
    iput-object p2, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;->stackTraceLines:[Ljava/lang/String;

    .line 180
    return-void
.end method

.method public static constructFromThisCallSite(Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;)Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;
    .locals 2
    .param p0, "firstProviderCall"    # Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;

    .prologue
    .line 184
    new-instance v0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;

    invoke-static {}, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;->getStackTraceString()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;-><init>(Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;[Ljava/lang/String;)V

    return-object v0
.end method

.method private static getStackTraceString()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 188
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 190
    .local v3, "stackTraceElements":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x5

    .line 191
    .local v2, "offset":I
    array-length v4, v3

    add-int/lit8 v4, v4, -0x5

    new-array v1, v4, [Ljava/lang/String;

    .line 192
    .local v1, "newElements":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 193
    add-int/lit8 v4, v0, 0x5

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    return-object v1
.end method


# virtual methods
.method public SaveCallTreeInJson(Lorg/json/JSONStringer;)V
    .locals 4
    .param p1, "jsonStringer"    # Lorg/json/JSONStringer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 201
    const-string v1, "stackTrace"

    invoke-virtual {p1, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 202
    invoke-virtual {p1}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 203
    iget-object v2, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;->stackTraceLines:[Ljava/lang/String;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 204
    .local v0, "stackTraceLine":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v0    # "stackTraceLine":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    .line 207
    const-string v1, "head"

    invoke-virtual {p1, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 208
    iget-object v1, p0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;->firstProviderCall:Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;

    invoke-virtual {v1, p1}, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->saveCallTreeInJson(Lorg/json/JSONStringer;)V

    .line 209
    invoke-virtual {p1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 210
    return-void
.end method
