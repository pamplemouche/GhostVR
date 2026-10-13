.class public final enum Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;
.super Ljava/lang/Enum;
.source "ApkUpdateInfoContract.java"

# interfaces
.implements Lcom/oculus/appmanager/info/ApkUpdateInfoContract$IntegerBasedEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/appmanager/info/ApkUpdateInfoContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;",
        ">;",
        "Lcom/oculus/appmanager/info/ApkUpdateInfoContract$IntegerBasedEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

.field public static final enum FULL_APK:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

.field public static final enum FULL_ASSET:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

.field public static final enum FULL_OBB:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

.field public static final enum PATCH_APK:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

.field public static final enum PATCH_ASSET:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

.field public static final enum PATCH_OBB:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;


# instance fields
.field private final mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 302
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    const/4 v1, 0x0

    const-string v2, "FULL_APK"

    const/high16 v3, 0x120000

    invoke-direct {v0, v2, v1, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->FULL_APK:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    .line 303
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    const/4 v2, 0x1

    const-string v3, "PATCH_APK"

    const/high16 v4, 0x220000

    invoke-direct {v0, v3, v2, v4}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->PATCH_APK:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    .line 304
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    const/4 v3, 0x2

    const-string v4, "FULL_OBB"

    const/high16 v5, 0x110000

    invoke-direct {v0, v4, v3, v5}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->FULL_OBB:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    .line 305
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    const/4 v4, 0x3

    const-string v5, "PATCH_OBB"

    const/high16 v6, 0x210000

    invoke-direct {v0, v5, v4, v6}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->PATCH_OBB:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    .line 306
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    const/4 v5, 0x4

    const-string v6, "FULL_ASSET"

    const/high16 v7, 0x140000

    invoke-direct {v0, v6, v5, v7}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->FULL_ASSET:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    .line 307
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    const/4 v6, 0x5

    const-string v7, "PATCH_ASSET"

    const/high16 v8, 0x240000

    invoke-direct {v0, v7, v6, v8}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->PATCH_ASSET:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    const/4 v0, 0x6

    .line 301
    new-array v0, v0, [Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    sget-object v7, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->FULL_APK:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    aput-object v7, v0, v1

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->PATCH_APK:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->FULL_OBB:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->PATCH_OBB:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->FULL_ASSET:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->PATCH_ASSET:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->$VALUES:[Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 311
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 312
    iput p3, p0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->mCode:I

    return-void
.end method

.method public static fromInt(I)Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;
    .locals 1

    .line 321
    const-class v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    invoke-static {v0, p0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract;->access$000(Ljava/lang/Class;I)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;
    .locals 1

    .line 301
    const-class v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    return-object p0
.end method

.method public static values()[Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;
    .locals 1

    .line 301
    sget-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->$VALUES:[Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    invoke-virtual {v0}, [Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    return-object v0
.end method


# virtual methods
.method public asInt()I
    .locals 1

    .line 317
    iget v0, p0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->mCode:I

    return v0
.end method

.method public isApk()Z
    .locals 1

    const/high16 v0, 0x20000

    .line 329
    invoke-virtual {p0, v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->isOfType(I)Z

    move-result v0

    return v0
.end method

.method public isAsset()Z
    .locals 1

    const/high16 v0, 0x40000

    .line 337
    invoke-virtual {p0, v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->isOfType(I)Z

    move-result v0

    return v0
.end method

.method public isFullUpdate()Z
    .locals 1

    const/high16 v0, 0x100000

    .line 341
    invoke-virtual {p0, v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->isOfType(I)Z

    move-result v0

    return v0
.end method

.method public isObb()Z
    .locals 1

    const/high16 v0, 0x10000

    .line 333
    invoke-virtual {p0, v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->isOfType(I)Z

    move-result v0

    return v0
.end method

.method public isOfType(I)Z
    .locals 2

    .line 325
    iget v0, p0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->mCode:I

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

.method public isPatchUpdate()Z
    .locals 1

    const/high16 v0, 0x200000

    .line 345
    invoke-virtual {p0, v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->isOfType(I)Z

    move-result v0

    return v0
.end method

.method public toFullUpdate()Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;
    .locals 2

    const/high16 v0, 0x200000

    .line 349
    invoke-virtual {p0, v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->isOfType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->asInt()I

    move-result v0

    const/high16 v1, 0x300000

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->fromInt(I)Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method
