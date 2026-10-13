.class public final enum Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;
.super Ljava/lang/Enum;
.source "OverTheAirUpdateStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

.field public static final enum NO_BUNDLE_LOADED:Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

.field public static final enum USE_EXISTING_OTA_BUNDLE:Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

.field public static final enum USE_NATIVE:Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

.field public static final enum USE_NEW_OTA_BUNDLE:Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    const-string v1, "NO_BUNDLE_LOADED"

    invoke-direct {v0, v1, v2}, Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;->NO_BUNDLE_LOADED:Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    .line 7
    new-instance v0, Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    const-string v1, "USE_NATIVE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;->USE_NATIVE:Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    .line 8
    new-instance v0, Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    const-string v1, "USE_EXISTING_OTA_BUNDLE"

    invoke-direct {v0, v1, v4}, Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;->USE_EXISTING_OTA_BUNDLE:Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    .line 9
    new-instance v0, Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    const-string v1, "USE_NEW_OTA_BUNDLE"

    invoke-direct {v0, v1, v5}, Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;->USE_NEW_OTA_BUNDLE:Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    sget-object v1, Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;->NO_BUNDLE_LOADED:Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;->USE_NATIVE:Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;->USE_EXISTING_OTA_BUNDLE:Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;->USE_NEW_OTA_BUNDLE:Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;->$VALUES:[Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    return-object v0
.end method

.method public static values()[Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;->$VALUES:[Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    invoke-virtual {v0}, [Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/fbreact/autoupdater/OverTheAirUpdateStatus;

    return-object v0
.end method
