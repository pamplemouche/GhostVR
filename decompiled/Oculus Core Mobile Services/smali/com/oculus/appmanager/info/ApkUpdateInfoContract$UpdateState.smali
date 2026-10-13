.class public final enum Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;
.super Ljava/lang/Enum;
.source "ApkUpdateInfoContract.java"

# interfaces
.implements Lcom/oculus/appmanager/info/ApkUpdateInfoContract$IntegerBasedEnum;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/appmanager/info/ApkUpdateInfoContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;",
        ">;",
        "Lcom/oculus/appmanager/info/ApkUpdateInfoContract$IntegerBasedEnum;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

.field public static final enum CANCELED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

.field public static final enum DELETING:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

.field public static final enum DOWNLOADED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

.field public static final enum DOWNLOADING:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

.field public static final enum FAILED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

.field public static final enum INSTALLING:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

.field public static final enum NEW:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

.field public static final enum QUEUED_DOWNLOAD:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

.field public static final enum RETRIED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

.field public static final enum SUCCESS:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

.field public static final enum UNINSTALLING:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

.field public static final enum VERIFIED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

.field public static final enum VERIFYING:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;


# instance fields
.field private final mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 377
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    const-string v1, "NEW"

    const v2, 0x90001

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->NEW:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    .line 378
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    const-string v1, "QUEUED_DOWNLOAD"

    const v2, 0xa0010

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->QUEUED_DOWNLOAD:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    .line 379
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    const-string v1, "DOWNLOADING"

    const v2, 0xa0020

    invoke-direct {v0, v1, v6, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->DOWNLOADING:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    .line 380
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    const-string v1, "DOWNLOADED"

    const v2, 0xa0030

    invoke-direct {v0, v1, v7, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->DOWNLOADED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    .line 381
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    const-string v1, "VERIFYING"

    const v2, 0xa0040

    invoke-direct {v0, v1, v8, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->VERIFYING:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    .line 382
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    const-string v1, "VERIFIED"

    const/4 v2, 0x5

    const v3, 0xa0050

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->VERIFIED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    .line 383
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    const-string v1, "INSTALLING"

    const/4 v2, 0x6

    const v3, 0x20060

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->INSTALLING:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    .line 384
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    const-string v1, "DELETING"

    const/4 v2, 0x7

    const v3, 0x20070

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->DELETING:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    .line 385
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    const-string v1, "SUCCESS"

    const/16 v2, 0x8

    const v3, 0x40100

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->SUCCESS:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    .line 386
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    const-string v1, "FAILED"

    const/16 v2, 0x9

    const v3, 0x40300

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->FAILED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    .line 387
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    const-string v1, "CANCELED"

    const/16 v2, 0xa

    const v3, 0x40200

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->CANCELED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    .line 388
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    const-string v1, "RETRIED"

    const/16 v2, 0xb

    const v3, 0x40400

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->RETRIED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    .line 389
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    const-string v1, "UNINSTALLING"

    const/16 v2, 0xc

    const v3, 0x20500

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->UNINSTALLING:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    .line 375
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->NEW:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->QUEUED_DOWNLOAD:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->DOWNLOADING:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->DOWNLOADED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->VERIFYING:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->VERIFIED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->INSTALLING:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->DELETING:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->SUCCESS:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->FAILED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->CANCELED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->RETRIED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->UNINSTALLING:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->$VALUES:[Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 393
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 394
    iput p3, p0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->mCode:I

    .line 395
    return-void
.end method

.method public static fromInt(I)Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;
    .locals 1

    .prologue
    .line 416
    const-class v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    invoke-static {v0, p0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract;->access$000(Ljava/lang/Class;I)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;
    .locals 1

    .prologue
    .line 375
    const-class v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    return-object v0
.end method

.method public static values()[Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;
    .locals 1

    .prologue
    .line 375
    sget-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->$VALUES:[Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    invoke-virtual {v0}, [Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    return-object v0
.end method


# virtual methods
.method public asInt()I
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->mCode:I

    return v0
.end method

.method public compare(Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;)I
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0, p0, p1}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->compare(Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;)I

    move-result v0

    return v0
.end method

.method public compare(Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;)I
    .locals 3

    .prologue
    const v2, 0xffff

    .line 400
    invoke-virtual {p1}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->asInt()I

    move-result v0

    and-int/2addr v0, v2

    .line 401
    invoke-virtual {p2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->asInt()I

    move-result v1

    and-int/2addr v1, v2

    .line 403
    sub-int v0, v1, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 375
    check-cast p1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    check-cast p2, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->compare(Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;)I

    move-result v0

    return v0
.end method

.method public isCancelable()Z
    .locals 1

    .prologue
    .line 436
    const/high16 v0, 0x80000

    invoke-virtual {p0, v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->isOfType(I)Z

    move-result v0

    return v0
.end method

.method public isFinal()Z
    .locals 1

    .prologue
    .line 432
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->isOfType(I)Z

    move-result v0

    return v0
.end method

.method public isInitial()Z
    .locals 1

    .prologue
    .line 424
    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->isOfType(I)Z

    move-result v0

    return v0
.end method

.method public isOfType(I)Z
    .locals 2

    .prologue
    .line 420
    iget v0, p0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->mCode:I

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransient()Z
    .locals 1

    .prologue
    .line 428
    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->isOfType(I)Z

    move-result v0

    return v0
.end method
