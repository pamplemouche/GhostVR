.class public Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;
.super Ljava/lang/Object;
.source "IntentParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/secure/intentparser/IntentParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComplexFieldParsingConfig"
.end annotation


# instance fields
.field private final fieldMatchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final parseFull:Z

.field private final parsePartial:Z

.field private final parsePathForNonFbUri:Z

.field private final preserveEncoding:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v0, p0, Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;->parseFull:Z

    .line 69
    iput-boolean v0, p0, Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;->parsePartial:Z

    .line 70
    iput-boolean v0, p0, Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;->parsePathForNonFbUri:Z

    .line 71
    iput-boolean v0, p0, Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;->preserveEncoding:Z

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;->fieldMatchers:Ljava/util/List;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;->parseFull:Z

    return v0
.end method

.method static synthetic access$100(Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;->parsePartial:Z

    return v0
.end method

.method static synthetic access$200(Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;->fieldMatchers:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public isParsePathForNonFbUri()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;->parsePathForNonFbUri:Z

    return v0
.end method

.method public preserveEncoding()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/facebook/secure/intentparser/IntentParser$ComplexFieldParsingConfig;->preserveEncoding:Z

    return v0
.end method
