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
        "Ljava/lang/Enum<",
        "Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;",
        ">;",
        "Lcom/oculus/appmanager/info/ApkUpdateInfoContract$IntegerBasedEnum;",
        "Ljava/util/Comparator<",
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

.field public static final enum VERIFIED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

.field public static final enum VERIFYING:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;


# instance fields
.field private final mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 359
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    const/4 v1, 0x0

    const-string v2, "NEW"

    const v3, 0x90001

    invoke-direct {v0, v2, v1, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->NEW:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    .line 360
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    const/4 v2, 0x1

    const-string v3, "QUEUED_DOWNLOAD"

    const v4, 0xa0010

    invoke-direct {v0, v3, v2, v4}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->QUEUED_DOWNLOAD:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    .line 361
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    const/4 v3, 0x2

    const-string v4, "DOWNLOADING"

    const v5, 0xa0020

    invoke-direct {v0, v4, v3, v5}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->DOWNLOADING:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    .line 362
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    const/4 v4, 0x3

    const-string v5, "DOWNLOADED"

    const v6, 0xa0030

    invoke-direct {v0, v5, v4, v6}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->DOWNLOADED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    .line 363
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    const/4 v5, 0x4

    const-string v6, "VERIFYING"

    const v7, 0xa0040

    invoke-direct {v0, v6, v5, v7}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->VERIFYING:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    .line 364
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    const/4 v6, 0x5

    const-string v7, "VERIFIED"

    const v8, 0xa0050

    invoke-direct {v0, v7, v6, v8}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->VERIFIED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    .line 365
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    const/4 v7, 0x6

    const-string v8, "INSTALLING"

    const v9, 0x20060

    invoke-direct {v0, v8, v7, v9}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->INSTALLING:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    .line 366
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    const/4 v8, 0x7

    const-string v9, "DELETING"

    const v10, 0x20070

    invoke-direct {v0, v9, v8, v10}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->DELETING:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    .line 367
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    const/16 v9, 0x8

    const-string v10, "SUCCESS"

    const v11, 0x40100

    invoke-direct {v0, v10, v9, v11}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->SUCCESS:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    .line 368
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    const/16 v10, 0x9

    const-string v11, "FAILED"

    const v12, 0x40300

    invoke-direct {v0, v11, v10, v12}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->FAILED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    .line 369
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    const/16 v11, 0xa

    const-string v12, "CANCELED"

    const v13, 0x40200

    invoke-direct {v0, v12, v11, v13}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->CANCELED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    .line 370
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    const/16 v12, 0xb

    const-string v13, "RETRIED"

    const v14, 0x40400

    invoke-direct {v0, v13, v12, v14}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->RETRIED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    const/16 v0, 0xc

    .line 357
    new-array v0, v0, [Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    sget-object v13, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->NEW:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    aput-object v13, v0, v1

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->QUEUED_DOWNLOAD:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->DOWNLOADING:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->DOWNLOADED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->VERIFYING:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->VERIFIED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->INSTALLING:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->DELETING:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->SUCCESS:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    aput-object v1, v0, v9

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->FAILED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    aput-object v1, v0, v10

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->CANCELED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    aput-object v1, v0, v11

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->RETRIED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    aput-object v1, v0, v12

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

    .line 374
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 375
    iput p3, p0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->mCode:I

    return-void
.end method

.method public static fromInt(I)Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;
    .locals 1

    .line 393
    const-class v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    invoke-static {v0, p0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract;->access$000(Ljava/lang/Class;I)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;
    .locals 1

    .line 357
    const-class v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    return-object p0
.end method

.method public static values()[Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;
    .locals 1

    .line 357
    sget-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->$VALUES:[Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    invoke-virtual {v0}, [Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    return-object v0
.end method


# virtual methods
.method public asInt()I
    .locals 1

    .line 389
    iget v0, p0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->mCode:I

    return v0
.end method

.method public compare(Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;)I
    .locals 1

    .line 381
    invoke-virtual {p1}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->asInt()I

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    .line 382
    invoke-virtual {p2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->asInt()I

    move-result p2

    and-int/2addr p2, v0

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 357
    check-cast p1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    check-cast p2, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->compare(Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;)I

    move-result p1

    return p1
.end method

.method public isCancelable()Z
    .locals 1

    const/high16 v0, 0x80000

    .line 413
    invoke-virtual {p0, v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->isOfType(I)Z

    move-result v0

    return v0
.end method

.method public isFinal()Z
    .locals 1

    const/high16 v0, 0x40000

    .line 409
    invoke-virtual {p0, v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->isOfType(I)Z

    move-result v0

    return v0
.end method

.method public isInitial()Z
    .locals 1

    const/high16 v0, 0x10000

    .line 401
    invoke-virtual {p0, v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->isOfType(I)Z

    move-result v0

    return v0
.end method

.method public isOfType(I)Z
    .locals 2

    .line 397
    iget v0, p0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->mCode:I

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isTransient()Z
    .locals 1

    const/high16 v0, 0x20000

    .line 405
    invoke-virtual {p0, v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->isOfType(I)Z

    move-result v0

    return v0
.end method
