.class public final enum Lcom/facebook/crudolib/urimap/UriScheme;
.super Ljava/lang/Enum;
.source "UriScheme.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/crudolib/urimap/UriScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/crudolib/urimap/UriScheme;

.field public static final enum FB:Lcom/facebook/crudolib/urimap/UriScheme;

.field public static final enum FBINTERNAL:Lcom/facebook/crudolib/urimap/UriScheme;

.field public static final enum FB_SERVICE:Lcom/facebook/crudolib/urimap/UriScheme;

.field public static final enum GAMES:Lcom/facebook/crudolib/urimap/UriScheme;

.field public static final enum INSTAGRAM:Lcom/facebook/crudolib/urimap/UriScheme;

.field public static final enum MESSENGER:Lcom/facebook/crudolib/urimap/UriScheme;

.field public static final enum MESSENGER_SAMETASK:Lcom/facebook/crudolib/urimap/UriScheme;

.field public static final enum MESSENGER_SECURE:Lcom/facebook/crudolib/urimap/UriScheme;

.field public static final enum NONE:Lcom/facebook/crudolib/urimap/UriScheme;

.field public static final enum PORTAL:Lcom/facebook/crudolib/urimap/UriScheme;

.field public static final enum TALK:Lcom/facebook/crudolib/urimap/UriScheme;


# instance fields
.field public final buildConstantName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 25
    new-instance v0, Lcom/facebook/crudolib/urimap/UriScheme;

    const-string v1, "FBINTERNAL"

    const-string v2, "FBINTERNAL_URL_SCHEME"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/crudolib/urimap/UriScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/crudolib/urimap/UriScheme;->FBINTERNAL:Lcom/facebook/crudolib/urimap/UriScheme;

    .line 31
    new-instance v0, Lcom/facebook/crudolib/urimap/UriScheme;

    const-string v1, "FB"

    const-string v2, "FB_URL_SCHEME"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/crudolib/urimap/UriScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/crudolib/urimap/UriScheme;->FB:Lcom/facebook/crudolib/urimap/UriScheme;

    .line 36
    new-instance v0, Lcom/facebook/crudolib/urimap/UriScheme;

    const-string v1, "FB_SERVICE"

    const-string v2, "FB_SERVICE_URL_SCHEME"

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/crudolib/urimap/UriScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/crudolib/urimap/UriScheme;->FB_SERVICE:Lcom/facebook/crudolib/urimap/UriScheme;

    .line 41
    new-instance v0, Lcom/facebook/crudolib/urimap/UriScheme;

    const-string v1, "GAMES"

    const-string v2, "GAMES_URL_SCHEME"

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/crudolib/urimap/UriScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/crudolib/urimap/UriScheme;->GAMES:Lcom/facebook/crudolib/urimap/UriScheme;

    .line 46
    new-instance v0, Lcom/facebook/crudolib/urimap/UriScheme;

    const-string v1, "INSTAGRAM"

    const-string v2, "INSTAGRAM_URL_SCHEME"

    invoke-direct {v0, v1, v8, v2}, Lcom/facebook/crudolib/urimap/UriScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/crudolib/urimap/UriScheme;->INSTAGRAM:Lcom/facebook/crudolib/urimap/UriScheme;

    .line 52
    new-instance v0, Lcom/facebook/crudolib/urimap/UriScheme;

    const-string v1, "MESSENGER"

    const/4 v2, 0x5

    const-string v3, "MESSENGER_URL_SCHEME"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/crudolib/urimap/UriScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/crudolib/urimap/UriScheme;->MESSENGER:Lcom/facebook/crudolib/urimap/UriScheme;

    .line 57
    new-instance v0, Lcom/facebook/crudolib/urimap/UriScheme;

    const-string v1, "MESSENGER_SAMETASK"

    const/4 v2, 0x6

    const-string v3, "MESSENGER_SAMETASK_URL_SCHEME"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/crudolib/urimap/UriScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/crudolib/urimap/UriScheme;->MESSENGER_SAMETASK:Lcom/facebook/crudolib/urimap/UriScheme;

    .line 62
    new-instance v0, Lcom/facebook/crudolib/urimap/UriScheme;

    const-string v1, "MESSENGER_SECURE"

    const/4 v2, 0x7

    const-string v3, "MESSENGER_SECURE_URL_SCHEME"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/crudolib/urimap/UriScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/crudolib/urimap/UriScheme;->MESSENGER_SECURE:Lcom/facebook/crudolib/urimap/UriScheme;

    .line 67
    new-instance v0, Lcom/facebook/crudolib/urimap/UriScheme;

    const-string v1, "PORTAL"

    const/16 v2, 0x8

    const-string v3, "PORTAL_URL_SCHEME"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/crudolib/urimap/UriScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/crudolib/urimap/UriScheme;->PORTAL:Lcom/facebook/crudolib/urimap/UriScheme;

    .line 72
    new-instance v0, Lcom/facebook/crudolib/urimap/UriScheme;

    const-string v1, "TALK"

    const/16 v2, 0x9

    const-string v3, "TALK_URL_SCHEME"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/crudolib/urimap/UriScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/crudolib/urimap/UriScheme;->TALK:Lcom/facebook/crudolib/urimap/UriScheme;

    .line 77
    new-instance v0, Lcom/facebook/crudolib/urimap/UriScheme;

    const-string v1, "NONE"

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/crudolib/urimap/UriScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/crudolib/urimap/UriScheme;->NONE:Lcom/facebook/crudolib/urimap/UriScheme;

    .line 19
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/facebook/crudolib/urimap/UriScheme;

    sget-object v1, Lcom/facebook/crudolib/urimap/UriScheme;->FBINTERNAL:Lcom/facebook/crudolib/urimap/UriScheme;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/crudolib/urimap/UriScheme;->FB:Lcom/facebook/crudolib/urimap/UriScheme;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/crudolib/urimap/UriScheme;->FB_SERVICE:Lcom/facebook/crudolib/urimap/UriScheme;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/crudolib/urimap/UriScheme;->GAMES:Lcom/facebook/crudolib/urimap/UriScheme;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/crudolib/urimap/UriScheme;->INSTAGRAM:Lcom/facebook/crudolib/urimap/UriScheme;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/crudolib/urimap/UriScheme;->MESSENGER:Lcom/facebook/crudolib/urimap/UriScheme;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/crudolib/urimap/UriScheme;->MESSENGER_SAMETASK:Lcom/facebook/crudolib/urimap/UriScheme;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/crudolib/urimap/UriScheme;->MESSENGER_SECURE:Lcom/facebook/crudolib/urimap/UriScheme;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/crudolib/urimap/UriScheme;->PORTAL:Lcom/facebook/crudolib/urimap/UriScheme;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/crudolib/urimap/UriScheme;->TALK:Lcom/facebook/crudolib/urimap/UriScheme;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/crudolib/urimap/UriScheme;->NONE:Lcom/facebook/crudolib/urimap/UriScheme;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/crudolib/urimap/UriScheme;->$VALUES:[Lcom/facebook/crudolib/urimap/UriScheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    iput-object p3, p0, Lcom/facebook/crudolib/urimap/UriScheme;->buildConstantName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public static decode(Ljava/lang/String;)Lcom/facebook/crudolib/urimap/UriScheme;
    .locals 1

    .prologue
    .line 106
    const-string v0, "$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/crudolib/urimap/UriScheme;->valueOf(Ljava/lang/String;)Lcom/facebook/crudolib/urimap/UriScheme;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/crudolib/urimap/UriScheme;->NONE:Lcom/facebook/crudolib/urimap/UriScheme;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/crudolib/urimap/UriScheme;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/facebook/crudolib/urimap/UriScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/crudolib/urimap/UriScheme;

    return-object v0
.end method

.method public static values()[Lcom/facebook/crudolib/urimap/UriScheme;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/facebook/crudolib/urimap/UriScheme;->$VALUES:[Lcom/facebook/crudolib/urimap/UriScheme;

    invoke-virtual {v0}, [Lcom/facebook/crudolib/urimap/UriScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/crudolib/urimap/UriScheme;

    return-object v0
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuildConstant()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 115
    iget-object v0, p0, Lcom/facebook/crudolib/urimap/UriScheme;->buildConstantName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scheme %s does not have a buildConstantName"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 117
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    :try_start_0
    const-class v0, Lcom/facebook/common/build/BuildConstants;

    iget-object v1, p0, Lcom/facebook/crudolib/urimap/UriScheme;->buildConstantName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not access %s.%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-class v4, Lcom/facebook/common/build/BuildConstants;

    .line 128
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/facebook/crudolib/urimap/UriScheme;->buildConstantName:Ljava/lang/String;

    aput-object v4, v3, v6

    .line 126
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hasBuildConstant()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/crudolib/urimap/UriScheme;->buildConstantName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
