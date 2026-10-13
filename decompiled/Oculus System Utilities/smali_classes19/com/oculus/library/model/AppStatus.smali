.class public final enum Lcom/oculus/library/model/AppStatus;
.super Ljava/lang/Enum;
.source "AppStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/library/model/AppStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/library/model/AppStatus;

.field public static final enum DOWNLOADING:Lcom/oculus/library/model/AppStatus;

.field public static final enum DOWNLOAD_QUEUED:Lcom/oculus/library/model/AppStatus;

.field public static final enum ENTITLED:Lcom/oculus/library/model/AppStatus;

.field public static final enum INCOMPATIBLE:Lcom/oculus/library/model/AppStatus;

.field public static final enum INSTALLED:Lcom/oculus/library/model/AppStatus;

.field public static final enum INSTALLING:Lcom/oculus/library/model/AppStatus;

.field public static final enum UNINSTALLING:Lcom/oculus/library/model/AppStatus;

.field public static final enum UNKNOWN:Lcom/oculus/library/model/AppStatus;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6
    new-instance v0, Lcom/oculus/library/model/AppStatus;

    const-string v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/library/model/AppStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/AppStatus;->UNKNOWN:Lcom/oculus/library/model/AppStatus;

    .line 8
    new-instance v0, Lcom/oculus/library/model/AppStatus;

    const-string v1, "ENTITLED"

    invoke-direct {v0, v1, v5, v4}, Lcom/oculus/library/model/AppStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/AppStatus;->ENTITLED:Lcom/oculus/library/model/AppStatus;

    .line 9
    new-instance v0, Lcom/oculus/library/model/AppStatus;

    const-string v1, "INCOMPATIBLE"

    invoke-direct {v0, v1, v6, v5}, Lcom/oculus/library/model/AppStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/AppStatus;->INCOMPATIBLE:Lcom/oculus/library/model/AppStatus;

    .line 10
    new-instance v0, Lcom/oculus/library/model/AppStatus;

    const-string v1, "DOWNLOAD_QUEUED"

    invoke-direct {v0, v1, v7, v6}, Lcom/oculus/library/model/AppStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/AppStatus;->DOWNLOAD_QUEUED:Lcom/oculus/library/model/AppStatus;

    .line 11
    new-instance v0, Lcom/oculus/library/model/AppStatus;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v8, v7}, Lcom/oculus/library/model/AppStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/AppStatus;->DOWNLOADING:Lcom/oculus/library/model/AppStatus;

    .line 12
    new-instance v0, Lcom/oculus/library/model/AppStatus;

    const-string v1, "INSTALLING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v8}, Lcom/oculus/library/model/AppStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/AppStatus;->INSTALLING:Lcom/oculus/library/model/AppStatus;

    .line 13
    new-instance v0, Lcom/oculus/library/model/AppStatus;

    const-string v1, "INSTALLED"

    const/4 v2, 0x6

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/library/model/AppStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/AppStatus;->INSTALLED:Lcom/oculus/library/model/AppStatus;

    .line 14
    new-instance v0, Lcom/oculus/library/model/AppStatus;

    const-string v1, "UNINSTALLING"

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/library/model/AppStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/AppStatus;->UNINSTALLING:Lcom/oculus/library/model/AppStatus;

    .line 5
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/oculus/library/model/AppStatus;

    sget-object v1, Lcom/oculus/library/model/AppStatus;->UNKNOWN:Lcom/oculus/library/model/AppStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/library/model/AppStatus;->ENTITLED:Lcom/oculus/library/model/AppStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/library/model/AppStatus;->INCOMPATIBLE:Lcom/oculus/library/model/AppStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/library/model/AppStatus;->DOWNLOAD_QUEUED:Lcom/oculus/library/model/AppStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/library/model/AppStatus;->DOWNLOADING:Lcom/oculus/library/model/AppStatus;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/library/model/AppStatus;->INSTALLING:Lcom/oculus/library/model/AppStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/library/model/AppStatus;->INSTALLED:Lcom/oculus/library/model/AppStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/library/model/AppStatus;->UNINSTALLING:Lcom/oculus/library/model/AppStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/library/model/AppStatus;->$VALUES:[Lcom/oculus/library/model/AppStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/oculus/library/model/AppStatus;->value:I

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/library/model/AppStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/oculus/library/model/AppStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/AppStatus;

    return-object v0
.end method

.method public static values()[Lcom/oculus/library/model/AppStatus;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/oculus/library/model/AppStatus;->$VALUES:[Lcom/oculus/library/model/AppStatus;

    invoke-virtual {v0}, [Lcom/oculus/library/model/AppStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/library/model/AppStatus;

    return-object v0
.end method
