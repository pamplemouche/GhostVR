.class public final enum Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;
.super Ljava/lang/Enum;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fbuploader/Config$DedupPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Hash"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;",
        ">;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;

.field public static final enum SHA256:Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;


# instance fields
.field private final mDigestInstanceString:Ljava/lang/String;

.field private final mHeaderPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 207
    new-instance v0, Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;

    const-string v1, "SHA256"

    const-string v2, "SHA-256"

    const-string v3, "sha256"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;->SHA256:Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;

    .line 205
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;

    sget-object v1, Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;->SHA256:Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;->$VALUES:[Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 213
    iput-object p3, p0, Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;->mDigestInstanceString:Ljava/lang/String;

    .line 214
    iput-object p4, p0, Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;->mHeaderPrefix:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;
    .locals 1

    .prologue
    .line 205
    const-class v0, Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;

    return-object v0
.end method

.method public static values()[Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;->$VALUES:[Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;

    invoke-virtual {v0}, [Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;

    return-object v0
.end method


# virtual methods
.method public getDigestInstanceString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;->mDigestInstanceString:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;->mHeaderPrefix:Ljava/lang/String;

    return-object v0
.end method
