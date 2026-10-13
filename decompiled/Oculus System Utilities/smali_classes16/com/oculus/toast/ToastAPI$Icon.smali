.class public final enum Lcom/oculus/toast/ToastAPI$Icon;
.super Ljava/lang/Enum;
.source "ToastAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/toast/ToastAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Icon"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/toast/ToastAPI$Icon;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/toast/ToastAPI$Icon;

.field public static final enum CHECK:Lcom/oculus/toast/ToastAPI$Icon;

.field public static final enum DOWNLOAD:Lcom/oculus/toast/ToastAPI$Icon;

.field public static final enum GEAR:Lcom/oculus/toast/ToastAPI$Icon;

.field public static final enum HOME:Lcom/oculus/toast/ToastAPI$Icon;

.field public static final enum LIBRARY:Lcom/oculus/toast/ToastAPI$Icon;

.field public static final enum MEDIA_GALLERY:Lcom/oculus/toast/ToastAPI$Icon;

.field public static final enum MICROPHONE:Lcom/oculus/toast/ToastAPI$Icon;

.field public static final enum PACIFIC_CONTROLLER:Lcom/oculus/toast/ToastAPI$Icon;

.field public static final enum PARTY:Lcom/oculus/toast/ToastAPI$Icon;

.field public static final enum STORE:Lcom/oculus/toast/ToastAPI$Icon;

.field public static final enum TV:Lcom/oculus/toast/ToastAPI$Icon;


# instance fields
.field private final mResourceId:I

.field private final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 26
    new-instance v0, Lcom/oculus/toast/ToastAPI$Icon;

    const-string v1, "CHECK"

    const-string v2, "check_alt"

    sget v3, Lcom/oculus/toastermodule/R$drawable;->ic_notif_check_alt:I

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/oculus/toast/ToastAPI$Icon;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/toast/ToastAPI$Icon;->CHECK:Lcom/oculus/toast/ToastAPI$Icon;

    .line 27
    new-instance v0, Lcom/oculus/toast/ToastAPI$Icon;

    const-string v1, "DOWNLOAD"

    const-string v2, "download"

    sget v3, Lcom/oculus/toastermodule/R$drawable;->ic_notif_download:I

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/oculus/toast/ToastAPI$Icon;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/toast/ToastAPI$Icon;->DOWNLOAD:Lcom/oculus/toast/ToastAPI$Icon;

    .line 28
    new-instance v0, Lcom/oculus/toast/ToastAPI$Icon;

    const-string v1, "GEAR"

    const-string v2, "gear"

    sget v3, Lcom/oculus/toastermodule/R$drawable;->ic_notif_gear:I

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/oculus/toast/ToastAPI$Icon;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/toast/ToastAPI$Icon;->GEAR:Lcom/oculus/toast/ToastAPI$Icon;

    .line 29
    new-instance v0, Lcom/oculus/toast/ToastAPI$Icon;

    const-string v1, "HOME"

    const-string v2, "home"

    sget v3, Lcom/oculus/toastermodule/R$drawable;->ic_notif_home:I

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/oculus/toast/ToastAPI$Icon;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/toast/ToastAPI$Icon;->HOME:Lcom/oculus/toast/ToastAPI$Icon;

    .line 30
    new-instance v0, Lcom/oculus/toast/ToastAPI$Icon;

    const-string v1, "LIBRARY"

    const-string v2, "library"

    sget v3, Lcom/oculus/toastermodule/R$drawable;->ic_notif_library:I

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/oculus/toast/ToastAPI$Icon;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/toast/ToastAPI$Icon;->LIBRARY:Lcom/oculus/toast/ToastAPI$Icon;

    .line 31
    new-instance v0, Lcom/oculus/toast/ToastAPI$Icon;

    const-string v1, "MEDIA_GALLERY"

    const/4 v2, 0x5

    const-string v3, "mediagallery"

    sget v4, Lcom/oculus/toastermodule/R$drawable;->ic_notif_gallery:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oculus/toast/ToastAPI$Icon;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/toast/ToastAPI$Icon;->MEDIA_GALLERY:Lcom/oculus/toast/ToastAPI$Icon;

    .line 32
    new-instance v0, Lcom/oculus/toast/ToastAPI$Icon;

    const-string v1, "MICROPHONE"

    const/4 v2, 0x6

    const-string v3, "microphone"

    sget v4, Lcom/oculus/toastermodule/R$drawable;->ic_notif_microphone:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oculus/toast/ToastAPI$Icon;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/toast/ToastAPI$Icon;->MICROPHONE:Lcom/oculus/toast/ToastAPI$Icon;

    .line 33
    new-instance v0, Lcom/oculus/toast/ToastAPI$Icon;

    const-string v1, "PACIFIC_CONTROLLER"

    const/4 v2, 0x7

    const-string v3, "pacific_controller"

    sget v4, Lcom/oculus/toastermodule/R$drawable;->ic_notif_pac_cont:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oculus/toast/ToastAPI$Icon;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/toast/ToastAPI$Icon;->PACIFIC_CONTROLLER:Lcom/oculus/toast/ToastAPI$Icon;

    .line 34
    new-instance v0, Lcom/oculus/toast/ToastAPI$Icon;

    const-string v1, "PARTY"

    const/16 v2, 0x8

    const-string v3, "party"

    sget v4, Lcom/oculus/toastermodule/R$drawable;->ic_notif_party:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oculus/toast/ToastAPI$Icon;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/toast/ToastAPI$Icon;->PARTY:Lcom/oculus/toast/ToastAPI$Icon;

    .line 35
    new-instance v0, Lcom/oculus/toast/ToastAPI$Icon;

    const-string v1, "STORE"

    const/16 v2, 0x9

    const-string v3, "store"

    sget v4, Lcom/oculus/toastermodule/R$drawable;->ic_notif_store:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oculus/toast/ToastAPI$Icon;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/toast/ToastAPI$Icon;->STORE:Lcom/oculus/toast/ToastAPI$Icon;

    .line 36
    new-instance v0, Lcom/oculus/toast/ToastAPI$Icon;

    const-string v1, "TV"

    const/16 v2, 0xa

    const-string v3, "tv"

    sget v4, Lcom/oculus/toastermodule/R$drawable;->ic_notif_tv:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oculus/toast/ToastAPI$Icon;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/toast/ToastAPI$Icon;->TV:Lcom/oculus/toast/ToastAPI$Icon;

    .line 25
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/oculus/toast/ToastAPI$Icon;

    sget-object v1, Lcom/oculus/toast/ToastAPI$Icon;->CHECK:Lcom/oculus/toast/ToastAPI$Icon;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/toast/ToastAPI$Icon;->DOWNLOAD:Lcom/oculus/toast/ToastAPI$Icon;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/toast/ToastAPI$Icon;->GEAR:Lcom/oculus/toast/ToastAPI$Icon;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/toast/ToastAPI$Icon;->HOME:Lcom/oculus/toast/ToastAPI$Icon;

    aput-object v1, v0, v8

    sget-object v1, Lcom/oculus/toast/ToastAPI$Icon;->LIBRARY:Lcom/oculus/toast/ToastAPI$Icon;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/toast/ToastAPI$Icon;->MEDIA_GALLERY:Lcom/oculus/toast/ToastAPI$Icon;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/toast/ToastAPI$Icon;->MICROPHONE:Lcom/oculus/toast/ToastAPI$Icon;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/toast/ToastAPI$Icon;->PACIFIC_CONTROLLER:Lcom/oculus/toast/ToastAPI$Icon;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oculus/toast/ToastAPI$Icon;->PARTY:Lcom/oculus/toast/ToastAPI$Icon;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oculus/toast/ToastAPI$Icon;->STORE:Lcom/oculus/toast/ToastAPI$Icon;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/oculus/toast/ToastAPI$Icon;->TV:Lcom/oculus/toast/ToastAPI$Icon;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/toast/ToastAPI$Icon;->$VALUES:[Lcom/oculus/toast/ToastAPI$Icon;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/oculus/toast/ToastAPI$Icon;->mText:Ljava/lang/String;

    .line 44
    iput p4, p0, Lcom/oculus/toast/ToastAPI$Icon;->mResourceId:I

    .line 45
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/oculus/toast/ToastAPI$Icon;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-static {}, Lcom/oculus/toast/ToastAPI$Icon;->values()[Lcom/oculus/toast/ToastAPI$Icon;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 57
    .local v0, "i":Lcom/oculus/toast/ToastAPI$Icon;
    invoke-virtual {v0}, Lcom/oculus/toast/ToastAPI$Icon;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 58
    return-object v0

    .line 56
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "i":Lcom/oculus/toast/ToastAPI$Icon;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown icon \"%s\""

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/toast/ToastAPI$Icon;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/oculus/toast/ToastAPI$Icon;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/toast/ToastAPI$Icon;

    return-object v0
.end method

.method public static values()[Lcom/oculus/toast/ToastAPI$Icon;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/oculus/toast/ToastAPI$Icon;->$VALUES:[Lcom/oculus/toast/ToastAPI$Icon;

    invoke-virtual {v0}, [Lcom/oculus/toast/ToastAPI$Icon;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/toast/ToastAPI$Icon;

    return-object v0
.end method


# virtual methods
.method public getResourceId()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/oculus/toast/ToastAPI$Icon;->mResourceId:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oculus/toast/ToastAPI$Icon;->mText:Ljava/lang/String;

    return-object v0
.end method
