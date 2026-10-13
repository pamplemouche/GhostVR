.class public final enum Lcom/oculus/library/model/LivestreamingStatus;
.super Ljava/lang/Enum;
.source "LivestreamingStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/library/model/LivestreamingStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/library/model/LivestreamingStatus;

.field public static final enum ACCEPTED:Lcom/oculus/library/model/LivestreamingStatus;

.field public static final enum REJECTED:Lcom/oculus/library/model/LivestreamingStatus;

.field private static final TAG:Ljava/lang/String;

.field public static final enum UNKNOWN:Lcom/oculus/library/model/LivestreamingStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 9
    new-instance v0, Lcom/oculus/library/model/LivestreamingStatus;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/oculus/library/model/LivestreamingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/LivestreamingStatus;->UNKNOWN:Lcom/oculus/library/model/LivestreamingStatus;

    .line 10
    new-instance v0, Lcom/oculus/library/model/LivestreamingStatus;

    const/4 v2, 0x1

    const-string v3, "ACCEPTED"

    invoke-direct {v0, v3, v2}, Lcom/oculus/library/model/LivestreamingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/LivestreamingStatus;->ACCEPTED:Lcom/oculus/library/model/LivestreamingStatus;

    .line 11
    new-instance v0, Lcom/oculus/library/model/LivestreamingStatus;

    const/4 v3, 0x2

    const-string v4, "REJECTED"

    invoke-direct {v0, v4, v3}, Lcom/oculus/library/model/LivestreamingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/LivestreamingStatus;->REJECTED:Lcom/oculus/library/model/LivestreamingStatus;

    const/4 v0, 0x3

    .line 8
    new-array v0, v0, [Lcom/oculus/library/model/LivestreamingStatus;

    sget-object v4, Lcom/oculus/library/model/LivestreamingStatus;->UNKNOWN:Lcom/oculus/library/model/LivestreamingStatus;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oculus/library/model/LivestreamingStatus;->ACCEPTED:Lcom/oculus/library/model/LivestreamingStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/model/LivestreamingStatus;->REJECTED:Lcom/oculus/library/model/LivestreamingStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/library/model/LivestreamingStatus;->$VALUES:[Lcom/oculus/library/model/LivestreamingStatus;

    .line 14
    const-class v0, Lcom/oculus/library/model/LivestreamingStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/library/model/LivestreamingStatus;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/oculus/library/model/LivestreamingStatus;
    .locals 5

    .line 18
    invoke-static {}, Lcom/oculus/library/model/LivestreamingStatus;->values()[Lcom/oculus/library/model/LivestreamingStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 19
    invoke-virtual {v3}, Lcom/oculus/library/model/LivestreamingStatus;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    :cond_1
    sget-object v0, Lcom/oculus/library/model/LivestreamingStatus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot livestreaming status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/library/model/LivestreamingStatus;
    .locals 1

    .line 8
    const-class v0, Lcom/oculus/library/model/LivestreamingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/library/model/LivestreamingStatus;

    return-object p0
.end method

.method public static values()[Lcom/oculus/library/model/LivestreamingStatus;
    .locals 1

    .line 8
    sget-object v0, Lcom/oculus/library/model/LivestreamingStatus;->$VALUES:[Lcom/oculus/library/model/LivestreamingStatus;

    invoke-virtual {v0}, [Lcom/oculus/library/model/LivestreamingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/library/model/LivestreamingStatus;

    return-object v0
.end method
