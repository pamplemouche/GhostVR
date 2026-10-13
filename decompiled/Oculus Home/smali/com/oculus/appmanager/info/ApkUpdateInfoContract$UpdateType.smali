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
        "Ljava/lang/Enum",
        "<",
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

.field public static final enum UNINSTALL:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;


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

    .line 319
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    const-string v1, "FULL_APK"

    const/high16 v2, 0x120000

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->FULL_APK:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    .line 320
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    const-string v1, "PATCH_APK"

    const/high16 v2, 0x220000

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->PATCH_APK:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    .line 321
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    const-string v1, "FULL_OBB"

    const/high16 v2, 0x110000

    invoke-direct {v0, v1, v6, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->FULL_OBB:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    .line 322
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    const-string v1, "PATCH_OBB"

    const/high16 v2, 0x210000

    invoke-direct {v0, v1, v7, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->PATCH_OBB:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    .line 323
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    const-string v1, "FULL_ASSET"

    const/high16 v2, 0x140000

    invoke-direct {v0, v1, v8, v2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->FULL_ASSET:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    .line 324
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    const-string v1, "PATCH_ASSET"

    const/4 v2, 0x5

    const/high16 v3, 0x240000

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->PATCH_ASSET:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    .line 325
    new-instance v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    const-string v1, "UNINSTALL"

    const/4 v2, 0x6

    const/high16 v3, 0x400000

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->UNINSTALL:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    .line 318
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->FULL_APK:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->PATCH_APK:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->FULL_OBB:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->PATCH_OBB:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->FULL_ASSET:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->PATCH_ASSET:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->UNINSTALL:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->$VALUES:[Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 329
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 330
    iput p3, p0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->mCode:I

    .line 331
    return-void
.end method

.method public static fromInt(I)Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 339
    const-class v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    invoke-static {v0, p0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract;->access$000(Ljava/lang/Class;I)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 318
    const-class v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;
    .locals 1

    .prologue
    .line 318
    sget-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->$VALUES:[Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    invoke-virtual {v0}, [Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    return-object v0
.end method


# virtual methods
.method public asInt()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->mCode:I

    return v0
.end method

.method public isApk()Z
    .locals 1

    .prologue
    .line 347
    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->isOfType(I)Z

    move-result v0

    return v0
.end method

.method public isAsset()Z
    .locals 1

    .prologue
    .line 355
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->isOfType(I)Z

    move-result v0

    return v0
.end method

.method public isFullUpdate()Z
    .locals 1

    .prologue
    .line 359
    const/high16 v0, 0x100000

    invoke-virtual {p0, v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->isOfType(I)Z

    move-result v0

    return v0
.end method

.method public isObb()Z
    .locals 1

    .prologue
    .line 351
    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->isOfType(I)Z

    move-result v0

    return v0
.end method

.method public isOfType(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 343
    iget v0, p0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->mCode:I

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

.method public isPatchUpdate()Z
    .locals 1

    .prologue
    .line 363
    const/high16 v0, 0x200000

    invoke-virtual {p0, v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->isOfType(I)Z

    move-result v0

    return v0
.end method

.method public toFullUpdate()Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;
    .locals 2

    .prologue
    .line 367
    const/high16 v0, 0x200000

    invoke-virtual {p0, v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->isOfType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->asInt()I

    move-result v0

    const/high16 v1, 0x300000

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->fromInt(I)Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    move-result-object p0

    .line 370
    .end local p0    # "this":Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;
    :cond_0
    return-object p0
.end method
